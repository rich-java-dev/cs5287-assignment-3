#!/bin/sh

# Bootstrapping steps. Here we create needed directories on the guest
mkdir -p ~/.ssh
mkdir -p ~/.ansible
mkdir -p ~/.config
mkdir -p ~/.config/openstack
mkdir -p ~/h2
mkdir -p ~/h3

# Run an apt get and ensure pip is installed.
# Although ansible installation will cover python, pip may not be acessible via ansible install alone.
apt-get update
apt-get install -y python3-pip
