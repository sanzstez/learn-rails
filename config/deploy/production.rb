set :stage, :production
set :rails_env, :production

set :user, "deploy"
set :application, "myapp"

set :branch, ENV['BRANCH'] || 'master'
set :deploy_to, "/home/#{fetch(:user)}/applications/#{fetch(:name)}"

set :unicorn_config_path, "#{shared_path}/config/unicorn.rb"
set :unicorn_pid, "#{shared_path}/pids/unicorn.pid"

role :app, %w{deploy@178.128.246.102}
role :web, %w{deploy@178.128.246.102}
role :db,  %w{deploy@178.128.246.102}