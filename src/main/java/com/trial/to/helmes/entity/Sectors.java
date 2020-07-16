package com.trial.to.helmes.entity;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "sectors")
public class Sectors {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String sector;
    private BigInteger parentId;

    public int getId() {
        return id;
    }

    public Sectors setId(int id) {
        this.id = id;
        return this;
    }

    public String getSector() {
        return sector;
    }

    public Sectors setSector(String sector) {
        this.sector = sector;
        return this;
    }

    public BigInteger getParentId() {
        return parentId;
    }

    public Sectors setParentId(BigInteger parentId) {
        this.parentId = parentId;
        return this;
    }
}