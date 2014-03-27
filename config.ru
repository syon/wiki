require 'rubygems'
require 'gollum/app'

gollum_path = '.'

# This is the key to make Gollum work on Heroku
unless File.exists? '.git'
  repo = Grit::Repo.init(gollum_path)
  repo.add('.')
  repo.commit_all('Create gollum wiki')
end

Precious::App.set(:default_markup, :markdown)
Precious::App.set(:wiki_options, { universal_toc: false, live_preview: true })
Precious::App.set(:gollum_path, gollum_path)
run Precious::App