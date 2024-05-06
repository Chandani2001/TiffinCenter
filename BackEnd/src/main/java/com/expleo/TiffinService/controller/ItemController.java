package com.expleo.TiffinService.controller;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
 
import com.expleo.TiffinService.entity.Item;
import com.expleo.TiffinService.entity.ItemResponse;
import com.expleo.TiffinService.service.ItemService;
 
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
 
@RestController
@RequestMapping("/item")
@CrossOrigin(origins="*")
public class ItemController {
 
    @Autowired
    private ItemService itemService;
 
    @GetMapping
    public ResponseEntity<Iterable<Item>> getAllItems() {
    	System.out.println("getAllItems called()");
        Iterable<Item> items = itemService.getAllItems();
        return new ResponseEntity<>(items, HttpStatus.OK);
    }
 
    @PostMapping("/add")
     public String addItem(String name,double price,String description) {
        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setDescription(description);
        itemService.addItem(item);
        String link="<a style=\"text-decoration: none; color: #007bff; font-weight: bold;\"href=\"http://localhost:8082/views/admin.jsp\"> New Id : {id}Go Back To Admin Portal</a>";
        return link;
    }
 
 
    @PutMapping("/{name}")
    public ResponseEntity<Item> updateItemByName(@PathVariable String name, @RequestBody Item updatedItem) {
           Item itemToUpdate = itemService.getItemByName(name);
           	if (itemToUpdate != null) {
            itemToUpdate.setName(updatedItem.getName());
            itemToUpdate.setDescription(updatedItem.getDescription());
            itemToUpdate.setPrice(updatedItem.getPrice());
            Item savedItem = itemService.addItem(itemToUpdate);
            return new ResponseEntity<>(savedItem, HttpStatus.OK);
        } else {
             return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
           	@PostMapping("/delete")
            public ResponseEntity<String> deleteItemByName(@RequestParam String name) {
           		System.out.println("Delete Method Called");
           		boolean deleted = itemService.deleteItemByName(name);
             if (deleted) {
            	 String redirectUrl = "http://localhost:8082/views/admin.jsp";
                 return ResponseEntity.status(HttpStatus.FOUND)
                                      .header("Location", redirectUrl)
                                      .build();
                } else {
                	 String redirectUrl = "http://localhost:8082/views/admin.jsp";
                     return ResponseEntity.status(HttpStatus.NOT_FOUND)
                                          .header("Location", redirectUrl)
                                          .build();
                }
            }
}