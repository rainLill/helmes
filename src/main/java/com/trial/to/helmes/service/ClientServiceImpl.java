package com.trial.to.helmes.service;

import com.trial.to.helmes.entity.Clients;
import com.trial.to.helmes.repository.ClientRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    ClientRepository clientRepository;

    public ClientServiceImpl(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    @Override
    public List<Clients> getClientData(String sessionId) {
        return clientRepository.getAllBySessionId(sessionId);
    }

    @Override
    public void createClient(List<Integer> sectors, String firstName, String sessionId, boolean agreedToTerms) {
        for (Integer sector : sectors) {
            Clients currentClientEntry = new Clients(null, firstName, sessionId, sector, agreedToTerms);
            clientRepository.save(currentClientEntry);
        }
    }

    @Override
    public void updateClient(List<Integer> inputSectors, String firstName, String sessionId, boolean agreedToTerms) {
        clientRepository.deleteBySessionId(sessionId);
        for (Integer sector : inputSectors) {
            Clients currentClientEntry = new Clients(null, firstName, sessionId, sector, agreedToTerms);
            clientRepository.save(currentClientEntry);
        }
    }
}