package com.confusion.model;

import javax.persistence.*;

@Entity
@Table(name="dishes")
public class Dish {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "dish_generator")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "image")
    private String image;

    @Column(name = "category")
    private String category;

    @Column(name = "label")
    private String label;

    @Column(name = "price")
    private String price;

    @Column(name = "description")
    private String description;

    public Dish() {
    }

    public Dish(String name, String image, String category, String label, String price, String description) {
        this.name = name;
        this.image = image;
        this.category = category;
        this.label = label;
        this.price = price;
        this.description = description;
    }

    // getters and setters

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
