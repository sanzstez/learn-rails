set :stage, :staging
set :rails_env, :staging

set :user, "deploy"
set :application, "myapp"

set :branch, ENV['BRANCH'] || 'master'
set :deploy_to, "/home/#{fetch(:user)}/applications/#{fetch(:application)}"

set :unicorn_config_path, "#{shared_path}/config/unicorn.rb"
set :unicorn_pid, "#{shared_path}/pids/unicorn.pid"

role :app, %w{deploy@128.199.50.144}
role :web, %w{deploy@128.199.50.144}
role :db,  %w{deploy@128.199.50.144}