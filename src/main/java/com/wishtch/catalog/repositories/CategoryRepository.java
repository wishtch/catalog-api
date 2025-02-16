package com.wishtch.catalog.repositories;

import com.wishtch.catalog.entities.categories.ProductCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<ProductCategoryEntity, Long> {}
