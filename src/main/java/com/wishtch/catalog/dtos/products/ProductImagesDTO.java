package com.wishtch.catalog.dtos.products;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Builder;
import lombok.With;

@With
@Builder
public record ProductImagesDTO(
        @JsonIgnore
        Long id,
        String imageUrl
) {}
