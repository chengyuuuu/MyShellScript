#!/bin/bash

all = ls ./assert/*.sh

for item in ${all}
do
    source ${item}
done