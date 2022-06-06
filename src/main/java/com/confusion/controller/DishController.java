package com.confusion.controller;

import com.confusion.model.Dish;
import com.confusion.repository.DishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "http://localhost:8081")
@RestController
@RequestMapping("/api")
public class DishController {
    @Autowired
    DishRepository dishRepository;
    @GetMapping("/dishes")
    public ResponseEntity<List<Dish>> getAllDishes(@RequestParam(required = false) String title) {
        List<Dish> dishes = new ArrayList<Dish>();
        dishRepository.findAll().forEach(dishes::add);
        return new ResponseEntity<>(dishes, HttpStatus.OK);
    }
}
