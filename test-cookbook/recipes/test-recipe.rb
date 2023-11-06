#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2023, The Authors, All Rights Reserved.
#
file "/myfile" do 
  content "hello!world"
  action :create
end


package 'tree' do 
end

file "/home/ec2-user/myfile2" do
   content "thsis is my second file being generated using chef"
   action :create
end

