# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rbpwdchecker}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gabriel Medina (Rha7)"]
  s.date = %q{2010-05-18}
  s.description = %q{Pro-active password checker tool (libcrack2).}
  s.email = ["rha7.com@gmail.com"]
  s.extensions = ["ext/rbpwdchecker/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/rbpwdchecker.rb", "script/console", "script/destroy", "script/generate", "ext/rbpwdchecker/rbpwdchecker.so", "ext/rbpwdchecker/extconf.rb"]
  s.homepage = %q{http://github.com/rha7dotcom/rbpwdchecker}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib", "ext/rbpwdchecker"]
  s.rubyforge_project = %q{rbpwdchecker}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A simple password validity checker based on libcrack2 (pro-active password checker library).}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<gemcutter>, [">= 0.5.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.5.0"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<gemcutter>, [">= 0.5.0"])
      s.add_dependency(%q<hoe>, [">= 2.5.0"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<gemcutter>, [">= 0.5.0"])
    s.add_dependency(%q<hoe>, [">= 2.5.0"])
  end
end
