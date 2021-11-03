#!/bin/bash

SOURCE_DIR="$HOME/projects/CampusX/backend"
declare -a SERVICES=('auth' 'profile' 'finance' 'timetable' 'life' 'learning' 'chat' 'news' 'notification')

# Start gateway
cd $SOURCE_DIR
tmux send-keys "cd $SOURCE_DIR" C-m 'clear' C-m

tmux rename-window 'gateway'
tmux send-keys -t 'gateway' "yarn dev:gateway" C-m

# Start all services
for service in "${SERVICES[@]}"
do
    tmux new-window -n $service
    tmux send-keys -t $service "yarn dev:$service" C-m
done
