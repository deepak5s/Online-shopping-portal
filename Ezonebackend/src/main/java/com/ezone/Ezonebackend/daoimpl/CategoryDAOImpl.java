package com.ezone.Ezonebackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.ezone.Ezonebackend.dao.CategoryDAO;
import com.ezone.Ezonebackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static List<Category> categories = new ArrayList<>();

	static {
		Category category = new Category();
		// adding first category
		category.setId(1);
		category.setName("Tv");
		category.setDescription("Aacha he");
		category.setImageURL("Cat1_png");
		category.setActive(true);
		categories.add(category);

		// adding second category
		category = new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("Aacha he");
		category.setImageURL("Cat12_png");
		category.setActive(true);
		categories.add(category);

	}

	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		// Enhanced for loop
		for (Category category : categories) {
			if (category.getId() == id)
				return category;
		}

		return null;

	}

}
