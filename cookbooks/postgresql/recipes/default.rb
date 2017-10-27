#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'postgresql' do 
	package_name 'postgresql-server'
	action :install
#	notifies :run, 'execute [postgresql-init]'
end
execute 'postgresql-init' do 
	command 'postgresql-setup init'
	action :nothing
end
service 'postgresql' do
	action [:enable,:start]
end
