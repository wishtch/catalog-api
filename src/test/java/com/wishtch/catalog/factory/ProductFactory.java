package com.wishtch.catalog.factory;

import com.wishtch.catalog.entities.categories.ProductCategoryEntity;
import com.wishtch.catalog.entities.products.ProductEntity;

public class ProductFactory {

    public static ProductCategoryEntity getProductCategoryEntity() {
        return ProductCategoryEntity.builder()
                .image("image")
                .name("teste name")
                .creationDate("hoje")
                .updatedDate("ontem")
                .build();
    }

    public static ProductEntity getProductEntity() {
        return ProductEntity.builder()
                .title("Title")
                .description("Description")
                .id(1L)
                .creationDate("")
                .price(11L)
                .updatedDate("")
                .build();
    }
}
