# -*- encoding: utf-8 -*-
# stub: slate 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "slate".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Trae Robrock".freeze]
  s.date = "2014-04-11"
  s.description = "Simple api on top of the graphite render api".freeze
  s.email = ["trobrock@gmail.com".freeze]
  s.homepage = "https://github.com/trobrock/slate".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Simple wrapper on top of the graphite render api".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.8"])
    s.add_runtime_dependency(%q<json>.freeze, ["~> 1.7"])
    s.add_runtime_dependency(%q<treetop>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_development_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rb-fsevent>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.6.3"])
  else
    s.add_dependency(%q<faraday>.freeze, ["~> 0.8"])
    s.add_dependency(%q<json>.freeze, ["~> 1.7"])
    s.add_dependency(%q<treetop>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.6.3"])
  end
end
