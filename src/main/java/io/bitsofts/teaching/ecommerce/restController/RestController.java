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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


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
   

  @RequestMapping(method = RequestMethod.GET, value = "/api/products")
    public ResponseEntity<List<Product>> getProducts(){
        return new ResponseEntity<>(pr.findAll(), HttpStatus.OK);
    }

    @GetMapping(path = "/api/product")
    public ResponseEntity<Product> getproductById(@RequestParam(name = "id") int id){
        return new ResponseEntity<>(pr.findById(id), HttpStatus.OK);
    }
}

