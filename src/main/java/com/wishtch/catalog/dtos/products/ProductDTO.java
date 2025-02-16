package com.wishtch.catalog.dtos.products;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import lombok.Builder;
import lombok.With;

import java.util.List;

@With
@Builder
public record ProductDTO(
    String title,
    String description,
    Long price,
    ProductCategoryDTO category,
    List<ProductImagesDTO> images,
    String creationDate,
    String updatedDate
) {}
