package com.trial.to.helmes.service;

import com.trial.to.helmes.entity.Sector;
import com.trial.to.helmes.repository.SectorRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SectorServiceImpl implements SectorService {

    SectorRepository sectorRepository;

    public SectorServiceImpl(SectorRepository sectorRepository) {
        this.sectorRepository = sectorRepository;
    }

    @Override
    public List<Sector> getAllSectors() {
        return sectorRepository.findAll();
    }
}
