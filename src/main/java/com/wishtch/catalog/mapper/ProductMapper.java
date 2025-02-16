package com.wishtch.catalog.mapper;
import com.wishtch.catalog.dtos.categories.ProductCategoryDTO;
import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.dtos.products.ProductImagesDTO;
import com.wishtch.catalog.entities.categories.ProductCategoryEntity;
import com.wishtch.catalog.entities.products.ProductEntity;
import java.util.List;

import com.wishtch.catalog.entities.products.ProductImagesEntity;
import org.mapstruct.Mapper;
import org.mapstruct.SubclassMapping;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface ProductMapper {
    ProductMapper INSTANCE = Mappers.getMapper(ProductMapper.class);

    ProductDTO toDTO(ProductEntity productEntity);
    List<ProductDTO> toDTO(List<ProductEntity> producstEntityList);

    @SubclassMapping(source = ProductCategoryEntity.class , target = ProductCategoryDTO.class)
    ProductCategoryDTO productCategoryToDTO(ProductCategoryEntity productCategoryEntity);

    @SubclassMapping(source = ProductImagesEntity.class , target = ProductImagesDTO.class)
    ProductImagesDTO productImagesToDTO(ProductImagesEntity productImagesEntity);
}
