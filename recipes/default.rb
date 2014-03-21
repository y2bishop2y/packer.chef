#
# Cookbook Name:: packer.chef
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'nginx'

directory '/var/www/nginx-default' do
  owner 'www-data'
  group 'www-data'
  mode  '0755'
  recursive true
  action :create
end


file '/var/www/nginx-default/index.html' do
  owner 'www-data'
  group 'www-data'
  mode  '0755'
  content 'Hello world from Packer!'
  action :create
end
