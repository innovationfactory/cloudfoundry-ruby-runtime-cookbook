template File.join(node['cloudfoundry_common']['staging_manifests_dir'], "sinatra.yml") do
  source "sinatra.yml.erb"
  owner  node['cloudfoundry_common']['user']
  mode   "0644"
  variables(
    :ruby_1_8_7_runtime => node['cloudfoundry_dea']['runtimes']['ruby18'],
    :ruby_1_9_2_runtime => node['cloudfoundry_dea']['runtimes']['ruby19']
  )
end
