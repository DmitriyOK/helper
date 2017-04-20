package ru.avito.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ru.avito.model.Product;

import java.util.List;

/**
 * Created by Dmitriy on 17.04.2017.
 */
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(name = "SELECT * FROM product WHERE category_id=:categoryId")
    List<Product> findByCategoryId(@Param("categoryId") Integer categoryId);
}