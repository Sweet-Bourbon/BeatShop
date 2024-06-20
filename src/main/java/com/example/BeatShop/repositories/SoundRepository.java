package com.example.BeatShop.repositories;

import com.example.BeatShop.models.Sound;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SoundRepository extends JpaRepository<Sound, Long> {
}
