$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'chef/provisioning/gce_driver/version'

Gem::Specification.new do |s|
  s.name = 'chef-provisioning-gce'
  s.version = Chef::Provisioning::GCEDriver::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.summary = 'Provisioner for Google Cloud resources in Chef Provisioning.'
  s.description = s.summary
  s.author = 'Peter Burkholder'
  s.email = 'https://github.com/pburkholder/chef-provisioning-gce'

  s.add_dependency 'chef', '>= 11.16.4'
  s.add_dependency 'chef-provisioning', '~> 0.9'

  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rubocop'

  s.bindir       = 'bin'
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Rakefile LICENSE README.md) +
    Dir.glob('{distro,lib,tasks,spec}/**/*', File::FNM_DOTMATCH)\
      .reject { |f| File.directory?(f) }
end
