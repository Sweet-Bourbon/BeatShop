package com.example.BeatShop.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="sounds")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sound {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;
    @Column(name="name")
    private String name;
    @Column(name="originalFileName")
    private String originalFileName;
    @Column(name="size")
    private Long size;
    @Column(name="contentType")
    private String contentType;
    @Lob
    @Column(name = "bytes", columnDefinition = "longblob")
    private byte[] bytes;
    //@ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    @OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Product product;
}
