#!/bin/bash

banner='
+++++++++++++++++++++++++++++
+                              +
+   Encryptor - BSZ!   +
+                              +
+++++++++++++++++++++++++++++
'

echo "$banner"

encrypt_text() {
   local text="$1"
   local key="$2"
   
   local encrypted_text=$(echo "$text" | openssl enc -aes-256-cbc -a -salt -pass pass:"key")
   echo "$encrypted_text"
}

read -p "Ingresa el texto para encriptar: " text

read -s -p "Ingresaa la clave de encriptacion: " key
echo ""

encrypted_text=$(encrypt_text "$text" "$key" )

echo "Texto encriptado: $encrypted_text"
