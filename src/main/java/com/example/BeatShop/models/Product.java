package com.example.BeatShop.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "price")
    private int price;
    private LocalDateTime dateOfCreated;
    //@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    //private List<Sound> sounds = new ArrayList<>();
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
    private Sound soundThisProduct = new Sound();
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    @PrePersist
    private void init()
    {
        dateOfCreated = LocalDateTime.now();
    }


    public void addSoundToProduct(Sound sound)
    {
        sound.setProduct(this);
        soundThisProduct = sound;
    }
}
