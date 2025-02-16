package com.wishtch.catalog.services;

import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.entities.products.ProductEntity;
import com.wishtch.catalog.mapper.ProductMapper;
import com.wishtch.catalog.repositories.ProductRepository;
import com.wishtch.catalog.services.impl.IProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService implements IProductService {
    private final ProductRepository productRepository;
    private final ProductMapper productMapper;

    public Page<ProductDTO> findAllPageable(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.ASC, "title"));
        Page<ProductEntity> productPage = productRepository.findAll(pageable);
        if (page >= productPage.getTotalPages() && !productPage.isEmpty()) {
            return Page.empty(pageable);
        }

        List<ProductDTO> productPageDto = productMapper.toDTO(productPage.getContent());
        return new PageImpl<>(productPageDto, pageable, productPage.getTotalElements());
    }
}
