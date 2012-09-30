
default['rpmforge']['url'] = 'http://packages.sw.be/rpmforge-release/'

case node['platform_version']
  when node['platform_version'].to_f <= 5.8 && node['kernel']['machine'] !=  'x86_64'
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el5.rf.i386.rpm'  
    default['rpmforge']['checksum'] = 'be6788d19979d675347c06d7d3a479c3dfdb4c2bdb2281ba92c058eecae00480'  
  when node['platform_version'].to_f <= 5.8  && node['kernel']['machine'] == 'x86_64'
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm'
    default['rpmforge']['checksum'] = '2df746e6fa066607c3a177578472f6dbb1a7fc6b8e53b79a2373d6ce9774da17'  
  when node['platform_version'].to_f >= 6.0  && node['kernel']['machine'] != 'x86_64'
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el6.rf.i686.rpm'
    default['rpmforge']['checksum'] = 'dfd9ac2886d20a4ce2b5599e637749b1193924d19a417715af61e71960c58a97'  
  else
    # default to centos 6.3 x86_64
    default['rpmforge']['file']     = 'rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm'
    default['rpmforge']['checksum'] = '8e9b34285a0251e777a39e65b8d76ba6cd6ca22a0d2eb7c8c153bd5023d6d952'  
end

