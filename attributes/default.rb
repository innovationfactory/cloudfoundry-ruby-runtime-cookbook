include_attribute "rbenv"

## FIXME
# This attribute needs to be set because of http://tickets.opscode.com/browse/CHEF-2903
# Should be removed when issue is fixed
default[:rbenv][:system_prefix] = "/opt"

default[:cloudfoundry_ruby_runtime][:ruby_1_8_7_version] = "1.8.7-p334"
default[:cloudfoundry_ruby_runtime][:ruby_1_9_2_version] = "1.9.2-p290"

default[:cloudfoundry_dea][:runtimes][:ruby18][:name]         = "ruby18"
default[:cloudfoundry_dea][:runtimes][:ruby18][:cookbook]     = "cloudfoundry-ruby-runtime::ruby_1_8_7"
default[:cloudfoundry_dea][:runtimes][:ruby18][:executable]   = File.join(node[:rbenv][:system_prefix], "rbenv", "versions", node[:cloudfoundry_ruby_runtime][:ruby_1_8_7_version], "bin", "ruby")
default[:cloudfoundry_dea][:runtimes][:ruby18][:version]      = node[:cloudfoundry_ruby_runtime][:ruby_1_8_7_version].sub('-', '')
default[:cloudfoundry_dea][:runtimes][:ruby18][:version_flag] = "-v | cut -d' ' -f2"
default[:cloudfoundry_dea][:runtimes][:ruby18][:default]      = false

default[:cloudfoundry_dea][:runtimes][:ruby19][:name]         = "ruby19"
default[:cloudfoundry_dea][:runtimes][:ruby19][:cookbook]     = "cloudfoundry-ruby-runtime::ruby_1_9_2"
default[:cloudfoundry_dea][:runtimes][:ruby19][:executable]   = File.join(node[:rbenv][:system_prefix], "rbenv", "versions", node[:cloudfoundry_ruby_runtime][:ruby_1_9_2_version], "bin", "ruby")
default[:cloudfoundry_dea][:runtimes][:ruby19][:version]      = node[:cloudfoundry_ruby_runtime][:ruby_1_9_2_version].sub('-', '')
default[:cloudfoundry_dea][:runtimes][:ruby19][:version_flag] = "-v | cut -d' ' -f2"
default[:cloudfoundry_dea][:runtimes][:ruby19][:default]      = true

default[:cloudfoundry_cloud_controller][:server][:frameworks][:rails3][:cookbook]  = "cloudfoundry-ruby-runtime::rails3"
default[:cloudfoundry_cloud_controller][:server][:frameworks][:sinatra][:cookbook] = "cloudfoundry-ruby-runtime::sinatra"
