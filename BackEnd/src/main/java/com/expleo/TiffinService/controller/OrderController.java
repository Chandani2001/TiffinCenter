package com.expleo.TiffinService.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.expleo.TiffinService.entity.Order;
import com.expleo.TiffinService.service.OrderService;

import java.util.Date;

@RestController
@RequestMapping("/api/orders")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @PostMapping("/create")
    public ResponseEntity<String> createOrder(
       		@RequestParam("name") String customerName,
    		@RequestParam("itemname") String itemName,
            @RequestParam("price") double price,
            @RequestParam("quantity") int quantity)
             {
	try {
        Order order = new Order();
        order.setItemName(itemName);
        order.setQuantity(quantity);
        order.setPrice(price);
        order.setCustomerName(customerName);
        order.setOrderDate(new Date());
        orderService.saveOrder(order);
        double billAmount = orderService.calculateBillAmount(order);
        return ResponseEntity.ok("<a style=\"text-decoration: none; color: #007bff; font-weight: bold;\" "
        		+ "href=\"http://localhost:8080/index.html\">Order placed successfully for customer: " +customerName + " and Bill Amount is "+ billAmount + ". Please Pay it on Counter.");
    } catch (Exception e) {
          return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to place order: " + e.getMessage());
    }
}
}
