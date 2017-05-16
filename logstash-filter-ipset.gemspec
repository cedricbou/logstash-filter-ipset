Gem::Specification.new do |s|
  s.name = 'logstash-filter-ipset'
  s.version         = '3.0.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This example filter replaces the contents of the message field with the specified value."
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Cedric Bou"]
  s.email = 'info@foop.fr'
  s.homepage = "http://github.com/cedricbou/logstash-filter-ipset"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'ruby-maven-libs', '~> 3.3'
  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'minitest', '~> 5.10'
  s.add_development_dependency 'rake', '~> 12.0'

  # Jar dependencies
  s.requirements << "jar 'fiddlewith:blockr.io', '0.5.1'"
  # s.requirements << "jar 'com.fasterxml.jackson.dataformat:jackson-dataformat-cbor', '2.7.4'"
  # s.requirements << "jar 'com.fasterxml.jackson.module:jackson-module-afterburner', '2.7.4'"
  s.add_runtime_dependency 'jar-dependencies'
end
