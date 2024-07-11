FROM postgres:latest

# Installa le dipendenze necessarie
RUN apt-get update -q && \
    apt-get install -q -y git make gcc libkrb5-dev postgresql-server-dev-16

WORKDIR /usr/share/postgresql/16/contrib

ENV USE_PGXS=1

# Clona, costruisce e installa pldebugger
RUN git clone https://github.com/EnterpriseDB/pldebugger.git && \
    cd pldebugger && \
    make && \
    make install

# Copia lo script di creazione dei ruoli
COPY create_roles.sql /docker-entrypoint-initdb.d/
