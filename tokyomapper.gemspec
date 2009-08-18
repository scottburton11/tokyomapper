# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tokyomapper}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Burton"]
  s.date = %q{2009-08-17}
  s.description = %q{TokyoMapper is a simple ORM for TokyoCabinet. Just 'include TokyoMapper' in your class and go! Requires the tokyocabinet-ruby bindings and the tokyocabinet package.}
  s.email = %q{scottburton11@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "features/env/env.rb",
     "features/env/feature_helpers.rb",
     "features/save_row.feature",
     "features/step_definitions/tokyo_mapper_steps.rb",
     "lib/tokyomapper.rb",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/string_extensions_spec.rb",
     "spec/tokyo_mapper_spec.rb",
     "test/test_helper.rb",
     "test/tokyomapper_test.rb",
     "tokyomapper.gemspec"
  ]
  s.homepage = %q{http://github.com/scottburton11/tokyomapper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A succinct ORM for TokyoCabinet}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/string_extensions_spec.rb",
     "spec/tokyo_mapper_spec.rb",
     "test/test_helper.rb",
     "test/tokyomapper_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
