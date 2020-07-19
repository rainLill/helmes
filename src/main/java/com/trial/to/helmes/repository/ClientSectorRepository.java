package com.trial.to.helmes.repository;

import com.trial.to.helmes.entity.ClientSector;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;

public interface ClientSectorRepository extends JpaRepository<ClientSector, BigInteger> {

    List<ClientSector> findAllByClientId(BigInteger clientId);

    @Transactional
    void deleteByClientId(BigInteger clientId);
}
