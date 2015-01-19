require 'spec_helper'

describe file('/usr/local/bin/wp') do
  it { should be_mode 755}
  it { should be_executable }
end

describe file('/home/vagrant/.wp-cli/config.yml') do
  it { should be_file}
  it { should contain '/var/www/html'}
end
