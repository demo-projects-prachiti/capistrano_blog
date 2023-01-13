set :stage, :production
role :app, %w{10.0.102.219}
role :web, %w{10.0.102.219}
role :db,  %w{10.0.102.219}
# set :rvm_ruby_version, 'ruby-3.0.0'
# set :default_env, { rvm_bin_path: '~/.rvm/bin' }
# SSHKit.config.command_map[:rake] = "#{fetch(:default_env)[:rvm_bin_path]}/rvm ruby-#{fetch(:rvm_ruby_version)} do bundle exec rake"
set :rvm_ruby_version, '2.7.2'
server '10.0.102.219', user: 'neosoft', roles: %w{web app}
# set :branch, "main"
set :ssh_options, { forward_agent: true, user: 'neosoft', keys: %w(~/.ssh/id_rsa) }