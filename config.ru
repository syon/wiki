require 'gollum/app'

gollum_path = '.'

# This is the key to make Gollum work on Heroku
unless File.exists? '.git'
  repo = Grit::Repo.init(gollum_path)
  repo.add('.')
  repo.commit_all('Create gollum wiki')
end


module Gollum

  # Override gollum-lib/page.rb for Subdirectory-Mode
  class Page
    def url_path
      path = if self.path.include?('/')
               self.path.sub(/\/[^\/]+$/, '/')
             else
               ''
             end

      path << Page.cname(self.name, '-', '-')
      path.sub!(/^source\//, '')
      path
    end
  end

  # Override gollum-lib/file.rb for Subdirectory-Mode
  class File
    def url_path
      path = self.path
      path = path.sub(/\/[^\/]+$/, '/') if path.include?('/')
      path.sub!(/^source\//, '')
      puts "++++++++++++++++++++++++++++++++++++++++++ File#url_path ++"
      path
    end
  end

end


Precious::App.set(:default_markup, :markdown)
Precious::App.set(:wiki_options, { universal_toc: false, live_preview: false, css: true, js: true })
Precious::App.set(:gollum_path, gollum_path)
run Precious::App
