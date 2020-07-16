package com.trial.to.helmes.repository;

import com.trial.to.helmes.entity.Client;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;
import java.math.BigInteger;
import java.util.List;

public interface ClientRepository extends JpaRepository<Client, BigInteger> {
    public List<Client> getAllBySessionId(String sessionId);

    @Transactional
    public void deleteBySessionId(String sessionId);
}
