require 'chef/provisioning'
require 'chef/provisioning/vagrant_driver'

with_driver "vagrant:#{File.join(File.dirname(__FILE__), '..')}"

vagrant_box 'ubuntu-14.04_chef-11.12.8' do
  url 'http://boxes.dyndns.com/vagrant/ubuntu-14.04_chef-11.12.8.box'
end

with_machine_options vagrant_options: {
  'vm.box' => 'ubuntu-14.04_chef-11.12.8'
}
