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
	action [:enable,:start]
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
