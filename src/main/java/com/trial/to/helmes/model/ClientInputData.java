package com.trial.to.helmes.model;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigInteger;
import java.util.List;

public class ClientInputData {
    @NotNull
    private String firstName;
    @NotEmpty
    private List<BigInteger> activeSectors;
    @AssertTrue
    private Boolean terms;

    public ClientInputData(String firstName, List<BigInteger> activeSectors, Boolean terms) {
        this.firstName = firstName;
        this.activeSectors = activeSectors;
        this.terms = terms;
    }

    public String getFirstName() {
        return firstName;
    }

    public ClientInputData setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public List<BigInteger> getActiveSectors() {
        return activeSectors;
    }

    public ClientInputData setActiveSectors(List<BigInteger> activeSectors) {
        this.activeSectors = activeSectors;
        return this;
    }

    public Boolean getTerms() {
        return terms;
    }

    public ClientInputData setTerms(Boolean terms) {
        this.terms = terms;
        return this;
    }
}
