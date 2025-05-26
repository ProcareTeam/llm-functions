#!/usr/bin/env bash
set -e

# @describe Help users search procare work instructions.
# @option --query! The query to execute.

# @meta require-tools rag

# @env LLM_OUTPUT=/dev/stdout The output path

main() {
    cd /home/cb/rag/pc-work-instruction/
    rag query --json "$argc_query" >> "$LLM_OUTPUT"
}

eval "$(argc --argc-eval "$0" "$@")"
