Guida:

1. Git pull
2. Inserire il file .backup dentro a /pgadmin-backup
3. Lanciare "docker-compose up --build -d"
4. Andare su <http://localhost:8080/> per pgAdmin
5. Login con <admin@example.com> e admin
6. Aggiungere nuovo server (solo prima volta)
    a. Nome a piacere
    b. host: postgres
    c. maintenance: postgres
    d. username: postgres
    e. password: postgres
7. Creare database e ripristinare backup (errori minori sono normali)
8. Installare estensione con:
    CREATE EXTENSION pldbgapi;
9. Have fun
