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


remote_file "rpmforge" do
  path Chef::Config[:file_cache_path] + "/rpmforge-release-0.3.6-1.el5.rf.i386.rpm"
  source "http://apt.sw.be/redhat/el5/en/i386/rpmforge/RPMS/rpmforge-release-0.3.6-1.el5.rf.i386.rpm"
  mode "0644"
  checksum "ca179c95eef0a6c29861579c960f4ca5c4da7d61ff387878aae2ed3089a44fd3"
end

package "rpmforge" do
  action :install
  source Chef::Config[:file_cache_path] + "/rpmforge-release-0.3.6-1.el5.rf.i386.rpm"
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

