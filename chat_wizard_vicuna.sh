#!/bin/bash

cd $(dirname $0)

# Important:
#
#   "--keep 48" is based on the contents of prompts/chat-with-bob.txt
#

#	--mirostat 2 \

./main -m models/Wizard-Vicuna-7B-Uncensored.Q4_K_M.gguf -c 512 -b 1024 -n 1024 --keep 48 \
    --repeat_penalty 1.0 --color -i \
    -r "User:" -f prompts/chat-with-bob.txt

