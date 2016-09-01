
# Cookbook Name:: my_learn_chef
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
file 'hello-world.txt'do
	content "this is my first chef file"
end

directory 'chefdir'

file 'chefdir/cheffile.txt' do
	content "this file is insdie the chefdir"
end

package 'httpd'

service 'httpd' do
    action:start
end

service 'firewall' do
    action:stop
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
