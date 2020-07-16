package com.trial.to.helmes.api;

import com.trial.to.helmes.entity.Sectors;
import com.trial.to.helmes.service.SectorService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("sector")
public class SectorsController {

    SectorService sectorService;

    public SectorsController(SectorService sectorService) {
        this.sectorService = sectorService;
    }

    @GetMapping()
    public List<Sectors> getAllSectors() {
        return sectorService.getAllSectors();
    }
}