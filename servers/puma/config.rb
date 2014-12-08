environment 'production'
daemonize
pidfile "#{ENV['OPENSHIFT_RUBY_SERVER_PID']}"
state_path "#{ENV['OPENSHIFT_RUBY_DIR']}run/server.state"
stdout_redirect "#{ENV['OPENSHIFT_RUBY_LOG_DIR']}/puma_stdout.log", "#{ENV['OPENSHIFT_RUBY_LOG_DIR']}/puma_stderr.log"
threads 0, 4
#workers 2
bind "tcp://#{ENV['OPENSHIFT_RUBY_IP']}:#{ENV['OPENSHIFT_RUBY_PORT']}"