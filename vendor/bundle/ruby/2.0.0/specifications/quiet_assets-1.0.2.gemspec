# -*- encoding: utf-8 -*-
# stub: quiet_assets 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "quiet_assets".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dmitry Karpunin".freeze, "Dmitry Vorotilin".freeze]
  s.date = "2013-02-22"
  s.description = "Quiet assets turn off rails assets log.".freeze
  s.email = ["koderfunk@gmail.com".freeze, "d.vorotilin@gmail.com".freeze]
  s.homepage = "http://github.com/evrone/quiet_assets".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Turn off rails assets log.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
    else
      s.add_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>.freeze, ["< 5.0", ">= 3.1"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
  end
end
