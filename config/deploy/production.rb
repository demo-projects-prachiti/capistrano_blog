set :stage, :production
role :app, %w{127.0.0.1}
role :web, %w{127.0.0.1}
role :db,  %w{127.0.0.1}
# set :rvm_ruby_version, 'ruby-3.0.0'
# set :default_env, { rvm_bin_path: '~/.rvm/bin' }
# SSHKit.config.command_map[:rake] = "#{fetch(:default_env)[:rvm_bin_path]}/rvm ruby-#{fetch(:rvm_ruby_version)} do bundle exec rake"
set :rvm_ruby_version, '2.7.2'
server '127.0.0.1', user: 'neosoft', roles: %w{web app}
# set :branch, "main"
set :ssh_options, { forward_agent: true, user: 'neosoft', keys: %w(~/.ssh/id_rsa) }