package com.trial.to.helmes.service;

import com.trial.to.helmes.model.ClientData;
import com.trial.to.helmes.model.ClientInputData;

public interface ClientService {

    ClientData getClientData();

    void createClient(ClientInputData clientInputData);

    void updateClient(ClientInputData clientInputData);
}
