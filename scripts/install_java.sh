#!/usr/bin/env bash

set -eu

mkdir -p ~/.jenv/versions
jenv add /Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home
