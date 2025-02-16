package com.wishtch.catalog.service;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.factory.ProductFactory;
import com.wishtch.catalog.mapper.CategoryMapper;
import com.wishtch.catalog.mapper.ProductMapper;
import com.wishtch.catalog.repositories.CategoryRepository;
import com.wishtch.catalog.repositories.ProductRepository;
import com.wishtch.catalog.services.ProductCategoryService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.BDDMockito;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

import static org.mockito.AdditionalAnswers.returnsFirstArg;

@SpringBootTest
public class CategoryServiceTest {

    @InjectMocks
    private ProductCategoryService productCategoryService;

    @Mock
    private CategoryRepository categoryRepository;

    @Mock
    private ProductRepository productRepository;

    @Mock
    private ProductMapper productMapper;

    @Mock
    private CategoryMapper categoryMapper;

    @Test
    void shouldReturnAllCategories() {
        Mockito.when(categoryRepository.findAll()).thenReturn(List.of(ProductFactory.getProductCategoryEntity()));
        BDDMockito.given(productMapper.toDTO(Mockito.anyList())).will(returnsFirstArg());

        List<ProductCategoryDTO> response = productCategoryService.listCategories();

        Assertions.assertNotNull(response);
    }

    @Test
    void shouldReturnAllProductByCategory() {
        Mockito.when(productRepository.findProductsByCategoryId(Mockito.any())).thenReturn(List.of(ProductFactory.getProductEntity()));
        BDDMockito.given(productMapper.toDTO(Mockito.anyList())).will(returnsFirstArg());


        List<ProductDTO> response = productCategoryService.findProductsByCategory(1L);

        Assertions.assertNotNull(response);
        Assertions.assertFalse(response.isEmpty());
    }
}
