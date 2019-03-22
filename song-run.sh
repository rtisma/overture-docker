#!/bin/bash

VERSION=1.4.1

SERVER_PORT=8080
STORAGE_SERVER_URL=https://storage.cancercollaboratory.org
SERVER_MANAGEMENT_PORT=8081
ID_URL=https://id.icgc.org
AUTH_TOKEN=234234
DB_HOST=localhost
DB_PORT=5432
DB_NAME=song
DB_USER=postgres
DB_PASSWORD=password
AUTH_SERVER_URL=sdfsdf
AUTH_SERVER_CLIENTID=sdfsdf
AUTH_SERVER_CLIENTSECRET=sdfsdf


docker run -t --log-driver json-file \
    --name song_server_$VERSION \
    -e SERVER_PORT=$SERVER_PORT \
	-e STORAGE_SERVER_URL=$STORAGE_SERVER_URL \
	-e SERVER_MANAGEMENT_PORT=$SERVER_MANAGEMENT_PORT \
	-e ID_URL=$ID_URL \
	-e AUTH_TOKEN=$AUTH_TOKEN \
	-e DB_HOST=$DB_HOST \
	-e DB_PORT=$DB_PORT \
	-e DB_NAME=$DB_NAME \
	-e DB_USER=$DB_USER \
	-e DB_PASSWORD=$DB_PASSWORD \
	-e AUTH_SERVER_URL=$AUTH_SERVER_URL \
	-e AUTH_SERVER_CLIENTID=$AUTH_SERVER_CLIENTID \
	-e AUTH_SERVER_CLIENTSECRET=$AUTH_SERVER_CLIENTSECRET \
    overture/song:1.4.1 

