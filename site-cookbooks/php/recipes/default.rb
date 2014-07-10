#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

modules = %w{php php-devel php-mbstring}

modules.each_with_index { |p, index|
  package p do
    action :install

    if index === modules.length - 1
      notifies :restart, 'service[httpd]'
    end
  end
}
