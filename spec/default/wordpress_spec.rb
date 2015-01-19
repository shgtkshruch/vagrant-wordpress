require 'spec_helper'

describe file('/var/www/html/index.php') do
  it { should be_file}
end

describe file('/var/www/html/wp-config.php') do
  it { should be_file}
end
