package com.trial.to.helmes.entity;

import javax.persistence.*;
import java.math.BigInteger;

@Entity
@Table(name = "client_sector")
public class ClientSector {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private BigInteger id;
    private BigInteger sectorId;
    private BigInteger clientId;

    public ClientSector() {
    }

    public ClientSector(BigInteger id, BigInteger sectorId, BigInteger clientId) {
        this.id = id;
        this.sectorId = sectorId;
        this.clientId = clientId;
    }

    public BigInteger getId() {
        return id;
    }

    public ClientSector setId(BigInteger id) {
        this.id = id;
        return this;
    }

    public BigInteger getSectorId() {
        return sectorId;
    }

    public ClientSector setSectorId(BigInteger sectorId) {
        this.sectorId = sectorId;
        return this;
    }

    public BigInteger getClientId() {
        return clientId;
    }

    public ClientSector setClientId(BigInteger clientId) {
        this.clientId = clientId;
        return this;
    }
}
