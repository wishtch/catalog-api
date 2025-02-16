package com.wishtch.catalog.services;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.entities.categories.ProductCategoryEntity;
import com.wishtch.catalog.mapper.CategoryMapper;
import com.wishtch.catalog.mapper.ProductMapper;
import com.wishtch.catalog.repositories.CategoryRepository;
import com.wishtch.catalog.repositories.ProductRepository;
import com.wishtch.catalog.services.impl.ICategoryService;
import com.wishtch.catalog.services.impl.IProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductCategoryService implements ICategoryService {

    private final CategoryRepository categoryRepository;
    private final ProductRepository productRepository;
    private final CategoryMapper categoryMapper;
    private final ProductMapper productMapper;

    @Override
    public List<ProductDTO> findProductsByCategory(Long categoryId) {
        return productMapper.toDTO(productRepository.findProductsByCategoryId(categoryId));
    }

    @Override
    public List<ProductCategoryDTO> listCategories() {
        List<ProductCategoryEntity> categories = categoryRepository.findAll();

        return categoryMapper.toDTO(categories);
    }
}
