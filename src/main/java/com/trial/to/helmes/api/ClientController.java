package com.trial.to.helmes.api;

import com.trial.to.helmes.model.ClientData;
import com.trial.to.helmes.model.ClientInputData;
import com.trial.to.helmes.service.ClientService;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("client")
public class ClientController {

    ClientService clientService;

    public ClientController(ClientService clientService) {
        this.clientService = clientService;
    }

    @GetMapping()
    public ClientData getClientData() {
        return clientService.getClientData();
    }

    @PostMapping()
    public void createClient(@Valid @RequestBody ClientInputData clientInputData) {
        clientService.createClient(clientInputData);
    }

    @PutMapping()
    public void updateClientData(@Valid @RequestBody ClientInputData clientInputData) {
        clientService.updateClient(clientInputData);
    }
}