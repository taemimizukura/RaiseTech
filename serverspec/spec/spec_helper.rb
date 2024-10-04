require 'serverspec'

set :backend, :ssh

set :host, 'ec2-57-180-213-93.ap-northeast-1.compute.amazonaws.com'
set :ssh_options, {
  user: 'ec2-user',
  keys: ['/home/taemimizukura/.ssh/RaiseTech-Key.pem'],
  forward_agent: true,
  auth_methods: %w(publickey)
}

set :app_directory, '/home/ec2-user/raisetech-live8-sample-app'