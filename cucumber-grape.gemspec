Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'cucumber-grape'
  s.version           = '0.5.0'
  s.date              = '2015-12-09'
  s.rubyforge_project = 'cucumber-grape'

  s.summary     = "Initialize a cucumber environment for grape"
  s.description = "This little gem will help you to initialize a cucumber environment for a grape application. It will generate the required files from templates."

  s.authors  = ["Mathieu Jobin"]
  s.email    = 'mathieu@venuenext.com'
  s.homepage = 'http://github.com/mathieujobin/cucumber-grape'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  s.executables = ["cucumber-grape"]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency('templater', [">= 1.0.0"])

  # = MANIFEST =
  s.files = %w[
    CHANGES.md
    LICENSE
    README.md
    Rakefile
    bin/cucumber-grape
    cucumber-grape.gemspec
    lib/cucumber/grape.rb
    lib/cucumber/grape/generators.rb
    lib/cucumber/grape/templates/app.rbt
    lib/cucumber/grape/templates/config.ru
    lib/cucumber/grape/templates/features/step_definitions/web_steps.rbt
    lib/cucumber/grape/templates/features/support/env.rbt
    lib/cucumber/grape/templates/features/support/paths.rbt
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  #s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
