package com.trial.to.helmes.repository;

import com.trial.to.helmes.entity.Sector;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface SectorRepository extends JpaRepository<Sector, BigInteger> {

}