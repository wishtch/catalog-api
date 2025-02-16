package com.wishtch.catalog.Controllers;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.services.ProductCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/categories")
public class CategoryController {
    private final ProductCategoryService productCategoryService;

    @GetMapping("/list")
    List<ProductCategoryDTO> list() {
        return productCategoryService.listCategories();
    }

    @GetMapping("/find/{id}")
    List<ProductDTO> findById(@PathVariable Long id) {
        return productCategoryService.findProductsByCategory(id);
    }
}
