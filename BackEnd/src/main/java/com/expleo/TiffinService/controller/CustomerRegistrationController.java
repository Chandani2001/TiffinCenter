package com.expleo.TiffinService.controller;
 
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.client.RestTemplate;
 
import com.expleo.TiffinService.entity.Customer;

import com.expleo.TiffinService.service.CustomerService;
 
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.*;
 
@RestController

public class CustomerRegistrationController {
     @Autowired
    private CustomerService customerService;
     @PostMapping("/register")
        public ResponseEntity<?> registerCustomer(
                @RequestParam String name,
                @RequestParam String email,
                @RequestParam String phoneNumber,
                @RequestParam String address,
                @RequestParam String password) {
            if (customerService.isPhoneNumberExists(phoneNumber)) {
                return ResponseEntity.badRequest().body("Phone number already exists");
            }
            Customer customer = new Customer();
            customer.setName(name);
            customer.setEmail(email);
            customer.setPhoneNumber(phoneNumber);
            customer.setAddress(address);
            customer.setPassword(password);
             customerService.registerCustomer(customer);
            return ResponseEntity.ok("<a style=\"text-decoration: none; color: #007bff; font-weight: bold;\" "
            		+ "href=\"http://localhost:8082/login.jsp\"> Successfully Registered !!"
            		+ " Welcome To Our Daily Customizable Tiffin Service For Placing Order Please Login First....</a>");

        }

    }
 
 