#!/bin/bash
for fichero in *.jpeg; do
  nombre=$(echo $fichero | cut -d "." -f1)
  echo $nombre
  extension=$(echo $fichero | cut -d "." -f2)
  echo $extension
#  mv $fichero $nombre.$extension
done
