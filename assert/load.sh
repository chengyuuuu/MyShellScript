#!/bin/bash

all=$(ls ./assert/load/*.sh)

for item in ${all}
do
    source ${item}
done