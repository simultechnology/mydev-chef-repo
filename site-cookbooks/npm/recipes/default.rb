#
# Cookbook Name:: npm
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "npm install" do
    code <<-EOC
        ln -s /usr/local/bin/node /usr/bin/node
        ln -s /usr/local/lib/node /usr/lib/node
        ln -s /usr/local/bin/npm /usr/bin/npm
        ln -s /usr/local/bin/node-waf /usr/bin/node-waf

        npm cache clean -f
        npm install -g n
        n stable

        npm install -g grunt-cli
    EOC
end