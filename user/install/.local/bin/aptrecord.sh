#!/usr/bin/env bash

echo "$@" >> ~/.aptrecord
exec sudo apt "$@"
