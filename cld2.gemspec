require File.expand_path("../lib/cld/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Jora"]
  gem.email = ["developers@jora.com"]
  gem.description = "Compact Language Detection for Ruby"
  gem.summary = "Compact Language Detection for Ruby"
  gem.homepage = "https://github.com/jobseekerltd/cld2"

  gem.files = `git ls-files`.split("\n")
  gem.extensions = ["ext/cld/extconf.rb"]
  gem.name = "cld2"
  gem.require_paths = ["lib"]
  gem.version = CLD::VERSION
  #
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if gem.respond_to?(:metadata)
    gem.metadata["allowed_push_host"] = "https://rubygems.pkg.github.com/jobseekerltd"

    gem.metadata["homepage_uri"] = gem.homepage
    gem.metadata["source_code_uri"] = "https://github.com/jobseekerltd/cld2"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  gem.add_dependency "ffi", "~> 1.9"

  gem.add_development_dependency "rspec", "~> 3"
  gem.license = "Nonstandard"
end
