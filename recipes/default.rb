#
# Cookbook Name:: crang-jenkins
# Recipe:: default
#
# Copyright 2013, Sam Crang 
#
# All rights reserved - Do Not Redistribute
#

%w{ gcc make zlib1g zlib1g-dev openssl-devel }.each do |p|
  package p
end

include_recipe 'jenkins::server'
include_recipe 'jenkins::proxy'
