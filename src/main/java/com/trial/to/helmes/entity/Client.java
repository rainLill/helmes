package com.trial.to.helmes.entity;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "client")
public class Client {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private BigInteger id;
    private String name;
    private String sessionId;
    private Integer sectorId;
    private boolean terms;

    public Client(BigInteger id, String name, String sessionId, Integer sectorId, boolean terms) {
        this.id = id;
        this.name = name;
        this.sessionId = sessionId;
        this.sectorId = sectorId;
        this.terms = terms;
    }

    public Client() {
    }

    public BigInteger getId() {
        return id;
    }

    public Client setId(BigInteger id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Client setName(String name) {
        this.name = name;
        return this;
    }

    public String getSessionId() {
        return sessionId;
    }

    public Client setSessionId(String sessionId) {
        this.sessionId = sessionId;
        return this;
    }

    public Integer getSectorId() {
        return sectorId;
    }

    public Client setSectorId(Integer sectorId) {
        this.sectorId = sectorId;
        return this;
    }
}
