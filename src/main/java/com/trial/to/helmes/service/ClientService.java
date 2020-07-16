package com.trial.to.helmes.service;

import com.trial.to.helmes.entity.Client;

import java.util.List;

public interface ClientService {

    void createClient(List<Integer> sectors, String firstName, String sessionId, boolean agreedToTerms);

    List<Client> getClientData(String sessionId);

    void updateClient(List<Integer> inputSectors, String firstName, String sessionId, boolean agreedToTerms);
}
