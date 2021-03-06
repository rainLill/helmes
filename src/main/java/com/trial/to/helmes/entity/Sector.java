package com.trial.to.helmes.entity;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "sector")
public class Sector {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private BigInteger id;
    private String sector;
    private BigInteger parentId;

    public BigInteger getId() {
        return id;
    }

    public Sector setId(BigInteger id) {
        this.id = id;
        return this;
    }

    public String getSector() {
        return sector;
    }

    public Sector setSector(String sector) {
        this.sector = sector;
        return this;
    }

    public BigInteger getParentId() {
        return parentId;
    }

    public Sector setParentId(BigInteger parentId) {
        this.parentId = parentId;
        return this;
    }
}