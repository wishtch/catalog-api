package com.wishtch.catalog.services.impl;

import com.wishtch.catalog.dtos.products.ProductDTO;
import org.springframework.data.domain.Page;

public interface IProductService {
    Page<ProductDTO> findAllPageable(int page, int size);
}
