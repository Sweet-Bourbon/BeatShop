package com.example.BeatShop.services;


import com.example.BeatShop.models.Product;
import com.example.BeatShop.models.Sound;
import com.example.BeatShop.models.User;
import com.example.BeatShop.repositories.ProductRepository;
import com.example.BeatShop.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;
import java.util.ArrayList;


@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Principal principal, Product product, MultipartFile file) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Sound sound;
        if(file.getSize() != 0)
        {
            sound = toSoundEntity(file);
            product.addSoundToProduct(sound);
        }
        log.info("Saving new Product. Title: {}; Author email: {}", product.getTitle(), product.getUser().getEmail());
        productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if(principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Sound toSoundEntity(MultipartFile file) throws IOException {
        Sound sound = new Sound();
        sound.setName(file.getName());
        sound.setOriginalFileName(file.getOriginalFilename());
        sound.setContentType(file.getContentType());
        sound.setSize(file.getSize());
        sound.setBytes(file.getBytes());
        return sound;
    }

    public void deleteProduct(Long id) {
        Product product = productRepository.findById(id).orElse(null);
        if (product != null) {
            productRepository.deleteById(id);
                log.info("Product with id = {} was deleted", id);
        } else {
            log.error("Product with id = {} is not found", id);
        }
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
