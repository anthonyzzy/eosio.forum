#!/usr/bin/env bash

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; source "${ROOT}/library.sh"

action_ok propose proposer1@active \
'{"proposer":"proposer1", "proposal_name":"simplef1", "title":"A simple one", "proposal_json":null}'

action_ok propose proposer2@active \
'{"proposer":"proposer2", "proposal_name":"simplef1", "title":"A simple one", "proposal_json":null}'

action_ko propose proposer1@active \
'{"proposer":"proposer1", "proposal_name":"simplef1", "title":"A simple one", "proposal_json":null}' \
"proposal with the same name exists"

