#!/bin/bash

headline " -> Installing Composer Packages"


packagelist=(

# TOOLS
# ------------------------

laravel/installer
laravel/envoy=~1.0

)

composer global require  ${packagelist[@]}
