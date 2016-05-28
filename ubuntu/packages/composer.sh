#!/bin/bash

headline " -> Installing Composer Packages"


packagelist=(

# TOOLS
# ------------------------

laravel/installer

)

composer global require  ${packagelist[@]}
