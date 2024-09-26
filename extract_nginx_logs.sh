#!/bin/bash

echo "Run this in the directory containing cc tarfiles"
ls | grep -E "cloud_controller.*tgz" | xargs -n1 -I{} mkdir {}.dir
ls | grep -E "cloud_controller.*tgz" | xargs -n1 -I{} tar -xvf {} -C {}.dir

find . -name "nginx-access*.gz" | xargs gzip -d
