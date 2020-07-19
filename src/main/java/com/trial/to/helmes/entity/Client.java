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
    private boolean terms;


    public Client() {
    }

    public Client(BigInteger id, String name, boolean terms) {
        this.id = id;
        this.name = name;
        this.terms = terms;
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

    public boolean isTerms() {
        return terms;
    }

    public Client setTerms(boolean terms) {
        this.terms = terms;
        return this;
    }
}
