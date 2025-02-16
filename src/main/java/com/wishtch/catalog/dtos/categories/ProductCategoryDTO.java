package com.wishtch.catalog.dtos.categories;

import lombok.Builder;
import lombok.With;

@With
@Builder
public record ProductCategoryDTO(
        Long id,
        String name,
        String image,
        String creationDate,
        String updatedDate
) {}
