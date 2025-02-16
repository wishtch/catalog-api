package com.wishtch.catalog.Controllers;

import com.wishtch.catalog.dtos.products.ProductDTO;
import com.wishtch.catalog.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/products")
public class ProductController {
  private final ProductService productService;

  @GetMapping("/list")
  public Page<ProductDTO> getProductPage(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "10") int size) {
    return productService.findAllPageable(page, size);
  }
}
