#!/bin/bash

set -xe

cmd='nginx -g "daemon off;"'

# TODO: Automate regenerating content of index.html every few seconds

## start application
bash -c "${cmd}"
