#!/bin/bash

txt_file=$1
mapfile -t messages < "$txt_file"
num_messages=${#messages[@]}
random_index=$((RANDOM % num_messages))
random_message="${messages[$random_index]}"
cowsay "$random_message"