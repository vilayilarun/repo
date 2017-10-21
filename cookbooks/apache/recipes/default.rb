#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'apache' do
	package_name 'httpd'
	action :install
end
service 'apache' do
	service_name 'httpd'
	action [:start, :enable]
end
