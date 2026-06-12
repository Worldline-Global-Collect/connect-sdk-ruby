Gem::Specification.new do |spec|
  spec.name           = 'connect-sdk-ruby'
  spec.version        = '5.0.1'
  spec.authors        = ['Worldline Global Collect']
  spec.email          = ['github.connect@worldline.com']
  spec.summary        = %q{SDK to communicate with the Worldline Global Collect platform using the Worldline Connect Server API}
  spec.description    = %q{SDK to communicate with the Worldline Global Collect platform using the Worldline Connect Server API}
  spec.homepage       = %q{https://github.com/Worldline-Global-Collect/connect-sdk-ruby}
  spec.license        = 'MIT'

  # exclude hidden files like .gitignore
  spec.files          = Dir['lib/**/*'] + Dir['examples/**/*'] + Dir['spec/**/*'] +
                        ['connect-sdk-ruby.gemspec', 'Gemfile', 'LICENSE.txt', 'Rakefile', 'README.md']
  spec.executables    = spec.files.grep(%r{^bin\/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)\/})
  spec.require_paths  = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'httpclient', '~> 2.8'
  spec.add_dependency 'concurrent-ruby', '~>1.0'

  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'webmock', '~> 3.26'
  spec.add_development_dependency 'sinatra', '~> 4.2'
  spec.add_development_dependency 'webrick', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 13.4'
  # spec.metadata['yard.run'] = 'yri'  # compiles yard doc on install
end
