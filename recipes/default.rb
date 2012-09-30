#
# Cookbook Name:: troublemaker
# Recipe:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

rpmforge_url      = node['rpmforge']['url']
rpmforge_file     = node['rpmforge']['file']
rpmforge_checksum = node['rpmforge']['checksum']

remote_file "rpmforge" do
  path Chef::Config[:file_cache_path] + rpmforge_file
  source rpmforge_url + rpmforge_file
  mode "0644"
  checksum rpmforge_checksum 
end

package "rpmforge" do
  action :install
  source Chef::Config[:file_cache_path] + rpmforge_file
  provider Chef::Provider::Package::Rpm
end

%w{ perl-Archive-Tar perl-YAML }.each do |pkg|
  yum_package pkg
end

bash "install troublemaker" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  wget http://downloads.sourceforge.net/project/trouble-maker/trouble-maker/0.11/trouble-maker-0.11.tgz
  cd /
  tar -zxvf /tmp/trouble-maker-0.11.tgz
  EOH
end

log(" \n\n*** WARNING! ***\n\n*** DO NOT RUN ON PRODUCTION MACHINE! ***\n\n ") { level :warn }

