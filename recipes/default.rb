# encoding: utf-8
#
# Cookbook Name:: hipache_nginx
# Recipe:: default
#
# Copyright (C) 2014, Darron Froese <darron@froese.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'redis::default'

apt_repository 'nginx-openresty' do
  uri          'http://ppa.launchpad.net/nginx-openresty/stable/ubuntu'
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keyserver.ubuntu.com'
  key          '39AB0BFD'
end

package 'nginx-openresty'

package 'liblua5.1-resty-redis'

# Config file install here.

service 'nginx' do
  action [:enable, :start]
end