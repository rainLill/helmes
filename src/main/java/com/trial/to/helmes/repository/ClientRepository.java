package com.trial.to.helmes.repository;

import com.trial.to.helmes.entity.Client;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface ClientRepository extends JpaRepository<Client, BigInteger> {

}
