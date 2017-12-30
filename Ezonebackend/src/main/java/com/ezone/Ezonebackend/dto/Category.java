package com.ezone.Ezonebackend.dto;

import javax.persistence.Entity;

@Entity
public class Category {
private int id;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getImageURL() {
	return ImageURL;
}
public void setImageURL(String imageURL) {
	ImageURL = imageURL;
}
public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}

/*private field*/
private String name;
private String description;
private String ImageURL;
private boolean active=true;//by default category goes true
}
