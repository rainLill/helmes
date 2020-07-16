package com.trial.to.helmes.repository;

import com.trial.to.helmes.entity.Clients;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

public interface ClientRepository extends JpaRepository<Clients, BigInteger> {
    public List<Clients> getAllBySessionId(String sessionId);

    @Transactional
    public void deleteBySessionId(String sessionId);
}
