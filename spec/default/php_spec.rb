require 'spec_helper'

describe package('php') do
  it { should be_installed }
end

describe package('php-devel') do
  it { should be_installed }
end

describe package('php-mysqlnd') do
  it { should be_installed }
end

describe package('php-gd') do
  it { should be_installed }
end

describe package('php-opcache') do
  it { should be_installed }
end

