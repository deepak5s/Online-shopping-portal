package com.ezone.Ezonebackend.dao;

import java.util.List;

import com.ezone.Ezonebackend.dto.Category;

public interface CategoryDAO {

	Category get(int id);

	List<Category> list();

	boolean add(Category category); // To add the category

	boolean delete(Category category);// To delete the category

	boolean update(Category category);// To update the category

}
