# chef_provisioning example

This repository is a demonstration of how to use `chef-provisioning` to provision a VM with `vagrant` and then use `infrataster` to run a test against it.

# Requirements
  * Ruby (tested with 1.9.3)
  * Vagrant

# Usage

    bundle install
    rake test

# What it does

The cookbook will create a virtual machine using Vagrant. Once created it will converge the apache2 cookbook on the VM. Finally it uses infrataster to check that the web server responds.

# How it works

1. Uses chef-provisioning to create the VM defined in `provision/provision.rb` using the vagrant driver defined in `provision/vagrant.rb`
2. chef-provisioning converges the run_list as specified in `provision/provision.rb`
3. rspec runs infrataster the server is defined in `spec/spec_helper.rb` with the example test in `spec/infrataster/default_spec.rb`
