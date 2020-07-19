package com.trial.to.helmes.model;

import java.math.BigInteger;
import java.util.List;

public class ClientData {
    private String firstName;
    private boolean terms;
    private List<BigInteger> sectors;

    public ClientData() {
    }

    public ClientData(String firstName, boolean terms, List<BigInteger> sectors) {
        this.firstName = firstName;
        this.terms = terms;
        this.sectors = sectors;
    }

    public String getFirstName() {
        return firstName;
    }

    public ClientData setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public boolean isTerms() {
        return terms;
    }

    public ClientData setTerms(boolean terms) {
        this.terms = terms;
        return this;
    }

    public List<BigInteger> getSectors() {
        return sectors;
    }

    public ClientData setSectors(List<BigInteger> sectors) {
        this.sectors = sectors;
        return this;
    }
}
