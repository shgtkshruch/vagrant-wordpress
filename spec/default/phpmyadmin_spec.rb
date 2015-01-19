require 'spec_helper'

describe package('phpMyAdmin') do
  it { should be_installed }
end
