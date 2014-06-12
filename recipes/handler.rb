# opsmatic::handler
#   Installs and configures the Opsmatic report and exception handler

chef_gem "chef-handler-opsmatic" do
  action :upgrade
  version node[:opsmatic][:handler_version]
end

require 'chef/handler/opsmatic'

chef_handler "Chef::Handler::Opsmatic" do
  source "chef/handler/opsmatic"
  arguments [ 
    :integration_token => node[:opsmatic][:integration_token],
    :collector_url     => node[:opsmatic][:collector_url],
    :ssl_peer_verify   => node[:opsmatic][:ssl_peer_verify]
  ]
  action :nothing
end.run_action(:enable)
