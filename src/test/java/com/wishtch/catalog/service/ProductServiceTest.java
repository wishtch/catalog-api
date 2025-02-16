package com.wishtch.catalog.service;

import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.factory.ProductFactory;
import com.wishtch.catalog.mapper.ProductMapper;
import com.wishtch.catalog.repositories.ProductRepository;
import com.wishtch.catalog.services.ProductService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

@SpringBootTest
public class ProductServiceTest {
    @InjectMocks
    private ProductService productService;

    @Mock
    private ProductRepository productRepository;

    @Mock
    private ProductMapper productMapper;

    @Test
    @DisplayName("Should return page of products")
    void shouldReturnPageOfProducts() {
        Mockito.when(productRepository.findAll(Mockito.any(Pageable.class)))
                .thenReturn(new PageImpl<>(List.of(ProductFactory.getProductEntity())));
        Page<ProductDTO> page = productService.findAllPageable(0, 1);
        Assertions.assertNotNull(page);
        Assertions.assertTrue(page.getTotalElements() > 0);
    }
}
