Helmes
===

 Setup
 
    - Create PostgreSQL database with name Helmes
    - Public schema
    - Tables and sector data is added automatically by Liquibase change logs
    - Start Spring server
    - Go to localhost:8080/
---
Notes

    - Front end is added to Spring server project and located
    resources/public/index.html. 
    - Front end is on React and Material-UI.
    - Front and back end both have input data validation (all
    fields mandatory).
    
    
    - Full database dump is in folder /DBdump