server '164.92.192.74', user: "#{fetch(:user)}", roles: %w{app db web}, primary: true

set :application, 'gituser'
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :environment, 'production'
set :rails_env,   'production'

set :nginx_server_name, '164.92.192.74'
set :puma_conf, "#{shared_path}/config/puma.rb"