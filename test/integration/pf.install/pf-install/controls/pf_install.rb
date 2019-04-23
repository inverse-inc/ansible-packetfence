# # encoding: utf-8

# get content from files/
package_params = yaml(content: inspec.profile.file('packages.yml')).params

# hack to get pf_version
pf_version = command("cat /usr/local/pf/conf/pf-release | awk -F ' ' '{print $2}'").stdout.strip

deb_sources_file = package_params['deb_sources_file']
deb_packages = package_params['deb_pf_packages']
centos_packages = package_params['centos_pf_packages']

# attribute to identify devel machine
pf_stable_version = attribute('pf_stable_version')
pf_devel_version = attribute('pf_devel_version')

title 'check pf.install role'

control 'pf-install-debian' do
  impact 1.0
  title 'Check PacketFence install under Debian'
  only_if { os.debian? }
  
  describe file(deb_sources_file) do
    it { should exist }
    it { should be_file }
  end

  describe apt('http://inverse.ca/downloads/PacketFence/debian') do
    it { should exist }
    it { should be_enabled }
  end
  deb_packages.each do |deb_package|
    describe package(deb_package) do
      it { should be_installed }
    end
  end
  #   describe apt('http://inverse.ca/downloads/PacketFence/debian-devel') do
  #     it { should exist }
  #     it { should be_enabled }
  #   end
  #   deb_packages.each do |deb_package|
  #     describe package(deb_package) do
  #       it { should be_installed }
  #       its('version') { should match /#{pf_devel_version}/ }
  #     end
  #   end
  # end
end

# control 'pf-install-debian-devel' do
#   impact 1.0
#   title 'Check PacketFence *devel* install under Debian'
#   only_if { pf_devel_state and os.debian? }
  
#   describe apt('http://inverse.ca/downloads/PacketFence/debian-devel') do
#     it { should exist }
#     it { should be_enabled }
#   end
#   deb_packages.each do |deb_package|
#     describe package(deb_package) do
#       it { should be_installed }
#       its('version') { should match /8.3.9/ }
#     end
#   end
# end
  

control 'pf-install-redhat' do
  impact 1.0
  title 'Check PacketFence install under RedHat family'
  only_if { os.redhat? }
  if pf_devel_state
    centos_packages.each do |centos_package|
      describe package(centos_package) do
        it { should be_installed }
        its('version') { should match /8.3.9/ }
      end
    end
  else
    centos_packages.each do |centos_package|
      describe package(centos_package) do
        it { should be_installed }
        its('version') { should cmp '8.3.0' }
      end
    end
  end
  describe yum.repo('packetfence') do
    it { should exist }
    it { should_not be_enabled }
  end
end

control 'pf-install-common' do
  impact 1.0
  title 'Check PacketFence common installation'

  # list all services before configurator
  describe port(1443) do
    it { should be_listening }
  end

  describe 
end

# control after pf-install
# package install with target versions
# configurator running under 1443
# other ports opened 
# read spec files to see what's going on
