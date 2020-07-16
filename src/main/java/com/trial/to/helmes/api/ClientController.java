package com.trial.to.helmes.api;

import com.trial.to.helmes.entity.Clients;
import com.trial.to.helmes.service.ClientService;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;


@RestController
@RequestMapping("client")
@Validated
public class ClientController {

    ClientService clientService;

    public ClientController(ClientService clientService) {
        this.clientService = clientService;
    }

    @GetMapping()
    public List<Clients> getClientData() {
        String sessionId = RequestContextHolder.currentRequestAttributes().getSessionId();
        return clientService.getClientData(sessionId);
    }

    @PostMapping()
    public void addClient(
            @NotEmpty @RequestBody List<Integer> inputSectors,
            @NotEmpty @RequestParam("firstName") String firstName,
            @NotNull @AssertTrue @RequestParam("terms") Boolean terms) {

        String sessionId = RequestContextHolder.currentRequestAttributes().getSessionId();
        clientService.createClient(inputSectors, firstName, sessionId, terms);
    }

    @PutMapping()
    public void updateClientData(
            @NotEmpty @RequestBody List<Integer> inputSectors,
            @NotEmpty @RequestParam("firstName") String firstName,
            @NotNull @AssertTrue @RequestParam("terms") Boolean terms) {

        String sessionId = RequestContextHolder.currentRequestAttributes().getSessionId();
        clientService.updateClient(inputSectors, firstName, sessionId, terms);
    }

}