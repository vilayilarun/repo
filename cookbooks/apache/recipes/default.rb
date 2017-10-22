#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
if node ['hostname'] == "rhel"
	package = "http"
elsif node ['hostname'] == "debian"
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
