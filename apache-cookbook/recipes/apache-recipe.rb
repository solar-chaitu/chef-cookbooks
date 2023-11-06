#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#


package 'httpd' do
end


file '/var/www/html/index.html' do
  content 'welcome to chef world'
  action :create
end

service 'httpd' do
 action [:enable, :start]
end

%w{httpd mariadb-server unzip git vim mysql)each do |p|
  package p do
  action :install 
  end
 end
