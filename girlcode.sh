#!/usr/bin/env bash

while read line
do
  echo $line | tr -d '[:punct:]' | wc -w
done
