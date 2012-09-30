
default['rpmforge']['url'] = 'http://packages.sw.be/rpmforge-release/'

case node['platform_version']
  when "5.8" 
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm'
    default['rpmforge']['checksum'] = '2df746e6fa066607c3a177578472f6dbb1a7fc6b8e53b79a2373d6ce9774da17'  
  when "6.3" 
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm'
    default['rpmforge']['checksum'] = '8e9b34285a0251e777a39e65b8d76ba6cd6ca22a0d2eb7c8c153bd5023d6d952'  
end

