require 'rubygems'
require 'capistrano-buildpack'

set :application, "mastodon"
set :repository, "git@git.zrail.net:peter/mastodon.git"
set :scm, :git
set :buildpack_url, "git@git.zrail.net:peter/bugsplat-buildpack-ruby-shared"

set :user, "peter"

set :concurrency, "web=1,worker=1,streaming=1"

load 'deploy'

role :web, "subspace.bugsplat.info"
set :base_port, 8900
set :skip_nginx_export, true

set :additional_domains, %w(
  social.keenfamily.us
)

read_env 'prod'
