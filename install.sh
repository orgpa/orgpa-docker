#! /bin/sh

mkdir src && cd src
git clone git clone git@github.com:orgpa/orgpa-database-api.git
cd ..
mkdir frontend && cd frontend
git clone git@github.com:orgpa/orgpa-frontend.git
cd ..