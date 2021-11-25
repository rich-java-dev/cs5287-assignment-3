
# cs5287-assignment-3
## MessageQueue/DataStore Pipeline using Kafka/CouchDB - Vagrant/Ansible/Kubernetes/Docker
### author: 
Richard White

## Intro

The purpose of this assignment was to become familiar with the provisioning and configuration of cloud resources, and to build a distributed work-flow.
There are 4 independent hosts in this system.

- 2 host/producers deployed on local/laptop/virtual box
	- configured with DHCP server and subnetted to separate interfaces/IPs
- 2 hosts deployed on cloud (Chameleon) which will server as a multi-node kafka/event stream platform.
- 1 of the 2 cloud hosts will also act as a database end-point to store data provided by producers.

## Kubernetes 

Kubernetes (k8s) is a highly scalable and reliable (dependable) deployment management framework.
Kubernetes allows us to distribute containerized applications seemlessly across a cluster network.

## Docker

Docker is the de-facto containerization technology, built in order to fully take advantage of linux's namespace isolation features, in an environment that allows utilizing/sharing the underlying host VM's kernel/resources.
This virtualization strategy creates high performance, fast apps with little overhead, while provided safety and security in terms of isolation from the host its running on (and other app running on the same host). 

## Variation from Assignment 1/2

Building on top of the vagrant VM automation and ansible playbooks to fully automate the entire pipe-line, assignment 3 introduced Docker and Kubernetes as the deployment strategy.


## Running the Project

On a machine with Vagrant/Virtualbox already installed, navigate to /vagrant sub-directory and run:
> vagrant up
