# -*- encoding: utf-8 -*-
# stub: fancy_irb 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "fancy_irb".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2017-03-18"
  s.description = "FancyIrb makes IRB # => friendly.".freeze
  s.email = "mail@janlelis.de".freeze
  s.homepage = "http://github.com/janlelis/fancy_irb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.requirements = ["Windows: ansicon <https://github.com/adoxa/ansicon>".freeze]
  s.rubygems_version = "2.6.14".freeze
  s.summary = "FancyIrb makes IRB friendly.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paint>.freeze, ["< 3.0", ">= 0.9"])
      s.add_runtime_dependency(%q<unicode-display_width>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.4"])
    else
      s.add_dependency(%q<paint>.freeze, ["< 3.0", ">= 0.9"])
      s.add_dependency(%q<unicode-display_width>.freeze, ["~> 1.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
    end
  else
    s.add_dependency(%q<paint>.freeze, ["< 3.0", ">= 0.9"])
    s.add_dependency(%q<unicode-display_width>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
  end
end
