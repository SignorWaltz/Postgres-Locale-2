# Guida all'installazione e configurazione

## Prerequisiti
- Docker e Docker Compose installati sulla macchina

## Installazione iniziale (da eseguire solo la prima volta)

1. Clonare o scaricare questo repository

2. Caricare le immagini Docker:
   docker load < localdatabase_postgres.tar
   docker load < pgadmin.tar
   
3. Impostare i permessi corretti per la cartella pgadmin-backup:
   sudo chown -R 5050:5050 ./pgadmin-backup

4. Accedere a pgAdmin:
- Aprire un browser e navigare su http://localhost:8080/
- Login con email: admin@example.com e password: admin

5. Aggiungere nuovo server in pgAdmin:
   a. Nome: a piacere
   b. Host: postgres
   c. Maintenance database: postgres
   d. Username: postgres
   e. Password: postgres

## Procedura per cambiare il file .backup

1. Sostituire il file .backup esistente con il nuovo nella cartella `/pgadmin-backup`

2. Avviare l'ambiente Docker:
   docker-compose up -d
