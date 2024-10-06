require 'serverspec'

set :backend, :ssh

set :host, 'ec2-54-150-159-229.ap-northeast-1.compute.amazonaws.com'
set :ssh_options, {
  user: 'ec2-user',
  keys: [ENV['SSH_KEY_PATH']],
  forward_agent: true,
  auth_methods: %w(publickey)
}

set :app_directory, '/home/ec2-user/raisetech-live8-sample-app'
