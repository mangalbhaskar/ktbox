#!/bin/bash

## Copyright (c) 2025 mangalbhaskar. All Rights Reserved.
##__author__ = 'mangalbhaskar'
###----------------------------------------------------------
## Build journal PDF
###----------------------------------------------------------


__LSCRIPTS=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

function build_pdf() {
  local main_file="${1:-"main.tex"}"
  local base_name=$(basename "${main_file}" .tex)
  local build_dir="build-01-${base_name}"
  local default_latexmk_config="data/LatexMk"
  local latexmk_config="${2:-$default_latexmk_config}"
  local timestamp=$(date +"%d%m%y_%H%M%S")
  # local log_file="logs/${timestamp}.${build_dir}.log"
  local log_file="logs/${build_dir}.log"

  ## Create build and log directories if they don't exist
  [[ ! -d "$build_dir" ]] && mkdir -p "$build_dir"
  [[ ! -d "logs" ]] && mkdir -p "logs"

  ## Check if the LatexMk config file exists and log warning if not
  [[ ! -f "$latexmk_config" ]] && echo "Warning: Config file '$latexmk_config' not found, proceeding without it" | tee "$log_file" && latexmk_config=""

  ## Run LatexMk and log output to both console and log file
  [[ -n "$latexmk_config" ]] && latexmk -pdf -r "$latexmk_config" -output-directory="$build_dir" "$main_file" 2>&1 | tee -a "$log_file" || latexmk -pdf -output-directory="$build_dir" "$main_file" 2>&1 | tee -a "$log_file"

  ## Print log file path
  echo "Build log saved to: $log_file" | tee -a "$log_file"

  ## Clean auxiliary files after build (optional)
  ## Uncomment if you want to clean auxiliary files after build
  # latexmk -c -output-directory="$build_dir" | tee -a "$log_file"
}

## Execute the build function
build_pdf "$@"
