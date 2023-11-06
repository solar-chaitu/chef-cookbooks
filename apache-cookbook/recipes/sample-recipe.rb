#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
#
#
#
file '/myconfigfile' do
  content "this is to get attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end

execute "run a script" do
  command <<-EOH 
  mkdir /sai
  touch /saifile
  EOH
end


user "raj" do
end


