package com.trial.to.helmes.api;

import com.trial.to.helmes.entity.Sector;
import com.trial.to.helmes.service.SectorService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("sector")
public class SectorsController {

    SectorService sectorService;

    public SectorsController(SectorService sectorService) {
        this.sectorService = sectorService;
    }

    @GetMapping()
    public List<Sector> getAllSectors() {
        return sectorService.getAllSectors();
    }
}