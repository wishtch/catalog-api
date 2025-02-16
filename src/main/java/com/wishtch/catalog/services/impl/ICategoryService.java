package com.wishtch.catalog.services.impl;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.dtos.products.ProductDTO;

import java.util.List;

public interface ICategoryService {
   List<ProductDTO> findProductsByCategory(Long categoryId);
   List<ProductCategoryDTO> listCategories();
}
