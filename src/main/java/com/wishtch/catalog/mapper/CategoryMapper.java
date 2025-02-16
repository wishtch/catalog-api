package com.wishtch.catalog.mapper;

import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.entities.categories.ProductCategoryEntity;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper(componentModel = "spring")
public interface CategoryMapper {
    ProductMapper INSTANCE = Mappers.getMapper(ProductMapper.class);

    ProductCategoryDTO toDTO(ProductCategoryEntity productCategoryEntity);
    List<ProductCategoryDTO> toDTO(List<ProductCategoryEntity> productCategoryDTO);
}
