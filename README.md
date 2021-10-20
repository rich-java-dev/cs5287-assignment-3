
# cs5287-assignment-2
## MessageQueue/DataStore Pipeline using Kafka/CouchDB - Vagrant/Ansible
### authors: 
Richard White, Rupak Mohanty

## Intro

The purpose of this assignment was to become familiar with the provisioning and configuration of cloud resources, and to build a distributed work-flow.
There are 4 independent hosts in this system.

- 2 host/producers deployed on local/laptop/virtual box
	- configured with DHCP server and subnetted to separate interfaces/IPs
- 2 hosts deployed on cloud (Chameleon) which will server as a multi-node kafka/event stream platform.
- 1 of the 2 cloud hosts will also act as a database end-point to store data provided by producers.


## Variation from Assignment 1

The major differences between assignment 1 and 2, is utilizing Vagrant and Ansible in conjunction to automate the entire pipe-line provisioning, configuration, and execution.


## Running the Project

On a machine with Vagrant/Virtualbox already installed, navigate to /vagrant sub-directory and run:
> vagrant up