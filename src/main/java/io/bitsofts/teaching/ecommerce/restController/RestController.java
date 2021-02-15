/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package io.bitsofts.teaching.ecommerce.restController;

import io.bitsofts.teaching.ecommerce.entity.Product;
import io.bitsofts.teaching.ecommerce.entity.User;
import io.bitsofts.teaching.ecommerce.repository.ProductRepository;
import io.bitsofts.teaching.ecommerce.repository.UserRepository;
import java.util.Iterator;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;


/**
 *
 * @author J2EE
 */
@org.springframework.web.bind.annotation.RestController
public class RestController {
    
   @Autowired
    ProductRepository pr;
   
   @Autowired
   UserRepository ur;
   
   @GetMapping(path = "/api/products")
   public ResponseEntity<List<Product>> getAllProdut(){
       
       return new ResponseEntity<>(pr.findAll(),HttpStatus.OK);
   
   }
   
    @GetMapping(path="/api/user")
   public ResponseEntity<Iterable<User>> getAllUser(){
   
       return  new ResponseEntity<>(ur.findAll(),HttpStatus.OK);
   }
}

