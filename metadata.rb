maintainer       "Paul Welch"
maintainer_email "pwelch2004@gmail.com"
license          "All rights reserved"
description      "Installs/Configures troublemaker"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ centos redhat }.each do |os|
  supports os
end

