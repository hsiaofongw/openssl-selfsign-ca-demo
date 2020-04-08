#!/bin/sh

./clean.sh

./generaterootcaprivatekey.sh
./generateselfsignrootca.sh
./viewselfsignrootcacert.sh
./generateintermediatecaprivatekey.sh
./generateintermediatecacsr.sh
./signintermediatecacsr.sh
./viewintermediatecacert.sh
./generatesiteprivatekey.sh
./generatesitecsr.sh
./signsitecsrusingintermediateca.sh
./viewsitecert.sh