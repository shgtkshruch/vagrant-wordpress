require 'spec_helper'

describe service('httpd') do
  it { should be_running }
  it { should be_enabled }
end

describe port('80') do
  it { should be_listening }
end

describe file('/var/www/html') do
  it { should be_owned_by 'apache'}
  it { should be_grouped_into 'apache'}
end

describe file('/etc/httpd/conf/httpd.conf') do
  it { should contain 'SetOutputFilter DEFLATE' }
end
