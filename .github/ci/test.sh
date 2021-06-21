#!/bin/bash

source $(dirname "$0")/common.sh
set -xe

start_section "symbiflow.configure_cmake" "Configuring CMake (make env)"
make env
source env/conda/bin/activate symbiflow_arch_def_base
cd build
end_section "symbiflow.configure_cmake"

# Output some useful info
start_section "info.conda.env" "Info on ${YELLOW}conda environment${NC}"
conda info
end_section "info.conda.env"

start_section "info.conda.config" "Info on ${YELLOW}conda config${NC}"
conda config --show
end_section "info.conda.config"

cat Makefile
