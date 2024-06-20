package com.example.BeatShop.controllers;


import com.example.BeatShop.models.Sound;
import com.example.BeatShop.repositories.SoundRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;

@RestController
@RequiredArgsConstructor
public class SoundController {
    private final SoundRepository soundRepository;

    @GetMapping("/sound/{id}")
        private ResponseEntity<?> getSoundById(@PathVariable Long id)
    {
        Sound sound = soundRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .header("fileName", sound.getOriginalFileName())
                .contentType(MediaType.valueOf(sound.getContentType()))
                .contentLength(sound.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(sound.getBytes())));
    }
}
