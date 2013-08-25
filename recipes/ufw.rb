#
# Cookbook Name:: crang-jenkins
# Recipe:: ufw
#
# Copyright 2013, Sam Crang
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'firewall'

node['jenkins']['http_proxy']['listen_ports'].each do |p|
  firewall_rule 'jenkins' do
    port p
    action :allow
    notifies :enable, "firewall[ufw]"
  end
end

firewall 'ufw' do
  action :nothing
end
