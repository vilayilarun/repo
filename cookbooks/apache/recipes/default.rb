#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end
package 'apache' do
	package_name package
	action :install
end
service 'apache' do
	service_name 'httpd'
	action [:start, :enable]
end
