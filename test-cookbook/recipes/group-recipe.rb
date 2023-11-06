
# Cookbook:: test-cookbook
# Recipe:: group-recipe
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
#
#
group "devops" do
  action :create
  members 'raj'
  append true
end

