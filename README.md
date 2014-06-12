opsmatic Cookbook
======================
This cookbook contains various recipes to help you with integrating your infrastructure with Opsmatic. The receipes
contained in this cookbook are as follows:

#### opsmatic::handler

This recipe configures a report and exception handler that sends detail on successful and failed runs to Opsmatic

Requirements
------------
#### opsmatic::handler

The Opsmatic report handler depends on the [chef_handler](https://github.com/opscode-cookbooks/chef_handler) cookbook

Attributes
----------
#### opsmatic::handler

* `node[:opsmatic][:integration_token]` - You must configure this attribute with your integration token. You can find your
integration token on the account settings page in your Opsmatic account.
* `node[:opsmatic][:ssl_peer_verify]` - Enables/Disable OpenSSL peer verification. Defaults to false (no peer verificaiton) until we can work out a consistent and reliable way to make this work for everyone.
* `node[:opsmatic][:handler_version]` - Version of the chef-handler-opsmatic rubygem to use. We suggest you set this attribute somewhere globally in your environment, we'll notify you when upgrades are available
and you can bump the version number.

Usage
-----
#### opsmatic::handler

To wire the handler into your infrastructure, add the `opsmatic::handler` recipe as the first item in the run list
of your node or role.

    {
        "name":"my_node",
        "run_list": [
            "recipe[opsmatic::handler]",
            ...
        ]
    }

Contributing
------------
1. Fork it ( https://github.com/opsmatic/opsmatic-cookbook/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
