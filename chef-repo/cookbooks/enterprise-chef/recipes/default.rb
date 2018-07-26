#
# Cookbook:: enterprize-chef
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package_url = node['enterprise-chef']['url']
package_name = ::File.basename(package_url)
package_local_path = "#{chef::Config[:file_cache_path]}/#{package_name}"

#omnibus_package is remote (ie a URL) let's download it
remote_file package_local_path do
    source package_url
end


package package_name do
    source package_local_path
    provider chef::provider::package::Rpm
    notifies :run, 'execute[reconfigure-chef-server]'
end

#reconfigure installation
execute 'reconfigure-chef-server' do
    command 'private-chef-ctl reconfigure'
    action :nothing
end