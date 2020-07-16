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

    - index.html is included in Spring project and located
    resources/public/index.html. 
    All other front-end resources are included same folder.
    - Front and back end both have input data validation (all
    fields mandatory). 
    
    - Full database dump is in folder /DBdump