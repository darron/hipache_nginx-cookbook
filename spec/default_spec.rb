# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'hipache_nginx::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'installs nginx-openresty' do
    expect(chef_run).to install_package('nginx-openresty')
  end

  it 'installs liblua5.1-resty-redis' do
    expect(chef_run).to install_package('liblua5.1-resty-redis')
  end
end
