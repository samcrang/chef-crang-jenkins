#
# Cookbook Name:: crang-jenkins
# Recipe:: default
#
# Copyright 2013, Sam Crang 
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'jenkins::server'
include_recipe 'jenkins::proxy'
