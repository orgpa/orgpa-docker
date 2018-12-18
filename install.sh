#! /bin/sh

## Installing vendore tool
go get -v github.com/kardianos/govendor

export GOPATH=$GOPATH:$PWD

mkdir src && cd src

## Clone repositories
git clone git@github.com:orgpa/orgpa-database-api.git
git clone git@github.com:orgpa/orgpa-frontend.git

## Vendoring dependencies in Orgpa-Database-API
cd orgpa-database-api
govendor init && govendor add +external
cd ..

## Vendoring dependencies in Orgpa-Frontend
cd orgpa-frontend
govendor init && govendor add +external
cd ..

## Back to orgpa-docker
cd ..