#!/bin/sh

name="$(curl -s https://swapi.co/api/people/1/ | jq '.name')" 

if [ "$name" != '"Leia Organa"' ]
then 
  echo "$name does not equal \"Leia Organa\""
  exit 1
fi
