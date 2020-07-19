package com.trial.to.helmes.service;

import com.trial.to.helmes.entity.Client;
import com.trial.to.helmes.entity.ClientSector;
import com.trial.to.helmes.model.ClientData;
import com.trial.to.helmes.model.ClientInputData;
import com.trial.to.helmes.repository.ClientRepository;
import com.trial.to.helmes.repository.ClientSectorRepository;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ClientServiceImpl implements ClientService {

    ClientRepository clientRepository;
    ClientSectorRepository clientSectorRepository;

    public ClientServiceImpl(ClientRepository clientRepository, ClientSectorRepository clientSectorRepository) {
        this.clientRepository = clientRepository;
        this.clientSectorRepository = clientSectorRepository;
    }

    @Override
    public ClientData getClientData() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        BigInteger clientId = (BigInteger) session.getAttribute("clientId");

        ClientData clientData = new ClientData()
                .setTerms(false);

        Optional<Client> clientOptional;

        if (clientId != null) {
            clientOptional = clientRepository.findById(clientId);
            List<ClientSector> clientSector = clientSectorRepository.findAllByClientId(clientId);
            List<BigInteger> sectorList = new ArrayList<>();

            for (ClientSector sector : clientSector) {
                sectorList.add(sector.getSectorId());
            }

            Client client = clientOptional.get();
            clientData
                    .setFirstName(client.getName())
                    .setTerms(client.isTerms())
                    .setSectors(sectorList);
        }

        return clientData;
    }

    @Override
    public void createClient(ClientInputData clientInputData) {
        Client newClient = new Client()
                .setId(null)
                .setName(clientInputData.getFirstName())
                .setTerms(clientInputData.getTerms());

        clientRepository.save(newClient);

        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        session.setAttribute("clientId", newClient.getId());

        for (BigInteger sector : clientInputData.getActiveSectors()) {
            ClientSector newEntry = new ClientSector(null, sector, newClient.getId());
            clientSectorRepository.save(newEntry);
        }
    }

    @Override
    public void updateClient(ClientInputData clientInputData) {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        BigInteger clientId = (BigInteger) session.getAttribute("clientId");

        Optional<Client> clientOptional = clientRepository.findById(clientId);
        Client client = clientOptional.get();

        if (!clientInputData.getFirstName().equals(client.getName())) {
            client.setName(clientInputData.getFirstName());
        }

        clientSectorRepository.deleteByClientId(clientId);

        for (BigInteger sector : clientInputData.getActiveSectors()) {
            ClientSector clientSector = new ClientSector()
                    .setId(null)
                    .setClientId(clientId)
                    .setSectorId(sector);

            clientSectorRepository.save(clientSector);
        }
    }
}