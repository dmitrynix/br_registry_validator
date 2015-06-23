Gem::Specification.new do |s|
  s.name = %q{br_registry_validator}
  s.version = "0.0.3"

  s.authors = ["Dmitry Rocha"]
  s.date = %q{2010-10-24}
  s.description = %q{Validator for CPF and CNPJ}
  s.email = %q{dmitryrck@gmail.com}
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "Rakefile",
    "br_registry_validator.gemspec",
    "init.rb",
    "lib/br_registry_validator.rb",
    "lib/documents/cnpj.rb",
    "lib/documents/cpf.rb",
    "lib/validators/cnpj_validator.rb",
    "lib/validators/cpf_validator.rb",
    "spec/documents/cnpj_spec.rb",
    "spec/documents/cpf_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/dmitrynix/br_registry_validator}
  s.require_paths = ["lib"]
  s.summary = %q{Validator for CPF and CNPJ}
  s.test_files = [
    "spec/documents/cnpj_spec.rb",
    "spec/documents/cpf_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/customer.rb",
    "spec/support/supplier.rb",
    "spec/validators/cnpj_spec.rb",
    "spec/validators/cpf_spec.rb"
  ]

  s.add_dependency "activerecord"

  s.add_development_dependency "sqlite3-ruby"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec"
end
