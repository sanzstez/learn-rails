set :stage, :staging
set :rails_env, :staging

set :user, "deploy"
set :application_name, "learn"

set :branch, ENV['BRANCH'] || 'master'
set :deploy_to, "/home/#{fetch(:user)}/applications/#{fetch(:application_name)}"

set :unicorn_config_path, "#{shared_path}/config/unicorn.rb"
set :unicorn_pid, "#{shared_path}/pids/unicorn.pid"

role :app, %w{deploy@188.226.132.129}
role :web, %w{deploy@188.226.132.129}
role :db,  %w{deploy@188.226.132.129}