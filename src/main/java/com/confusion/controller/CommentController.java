package com.confusion.controller;

import com.confusion.model.Comment;
import com.confusion.repository.CommentRepository;
import com.confusion.repository.DishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:8081")
@RestController
@RequestMapping("/api")
public class CommentController {

    @Autowired
    private DishRepository dishRepository;
    @Autowired
    private CommentRepository commentRepository;

    @GetMapping("/dishes/{dishId}/comments")
    public ResponseEntity<List<Comment>> getAllCommentsByDishId(@PathVariable(value = "dishId") Long dishId) {
        List<Comment> comments = commentRepository.findByDishId(dishId);
        return new ResponseEntity<>(comments, HttpStatus.OK);
    }
}

