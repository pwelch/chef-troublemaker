[![Build Status](https://secure.travis-ci.org/pwelch/chef-troublemaker.png)](http://travis-ci.org/pwelch/chef-troublemaker)

## Description
Installs [Trouble-maker](http://trouble-maker.sourceforge.net/) which is used as a study tool for RHCE.


# WARNING - DO NOT RUN ON A PRODUCTION MACHINE


## Requirements

* [Vagrant](http://vagrantup.com/) or a chef node you don't care about.

### Platforms
Trouble-maker is targeted towards RHEL based Linux distrobutions.

Cookbook tested on the following:

* [Centos 5.8](https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-centos-5.8.box)
* [Centos 6.3](https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-centos-6.3.box)

## Usage

After Installation

For Centos 5.3:

```bash
/usr/local/trouble-maker/bin/trouble-maker.pl --version=RHEL_5
```

For Centos 6.3:

```bash
/usr/local/trouble-maker/bin/trouble-maker.pl --version=RHEL_6
```

## License and Author

Author:: Paul Welch (<pwelch2004@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

