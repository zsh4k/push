#!/bin/bash

# Agregar titulo al README.md
echo "Agrega titulo al README.md"
read ridmi
echo "# $ridmi" >> README.md

echo iniciando git
git init 

echo cambiando a la rama main
git branch -M main

#agregando gitignore
echo ".gitignore" >> .gitignore
echo "push.sh" >> .gitignore

echo Agregando arhivos a git
git add .

echo Agregando commit
git commit -m "primer commit"

echo dime el repo a conectar

read repo
echo conectando
git remote add origin git@github.com:$repo

echo subiendo a github
git push -u origin main

