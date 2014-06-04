#!/bin/bash

function check_error() {
	if [ $? -ne 0 ]; then
		echo "Error found! exiting..."
		exit 1
	fi
}

# rake setup_github_pages if needed

rake generate
check_error

rake deploy
check_error

