package com.trial.to.helmes.service;

import com.trial.to.helmes.entity.Sectors;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface SectorService {
    List<Sectors> getAllSectors();
}
