Guida:

1. Git pull
2. Inserire il file .backup dentro a /pgadmin-backup
3. sudo nano /etc/docker/daemon.json
4. aggiungere:
   {
      "dns": ["8.8.8.8", "8.8.4.4"]
   }
6. Lanciare "docker-compose up --build -d" oppure "sudo UID=$UID GID=$GID docker-compose up --build"
7. Andare su <http://localhost:8080/> per pgAdmin
8. Login con <admin@example.com> e admin
9. Aggiungere nuovo server (solo prima volta)
    a. Nome a piacere
    b. host: postgres
    c. maintenance: postgres
    d. username: postgres
    e. password: postgres
10. Creare database e ripristinare backup (errori minori sono normali)
11. Installare estensione con:
    CREATE EXTENSION pldbgapi;
12. Have fun
