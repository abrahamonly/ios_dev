# frozen_string_literal: true

require_relative "lib/ios_dev/version"

Gem::Specification.new do |spec|
  spec.name = "ios_dev"
  spec.version = IosDev::VERSION
  spec.authors = ["xiongzenghui"]
  spec.email = ["xiongzenghui@gmail.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.description = "Write a longer description or delete this line."
  spec.homepage = "https://github.com/xiongzenghui/ios_dev"
  spec.license = "MIT"
  spec.required_ruby_version = [">= 2.6.0", "< 3.0"]
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{\Abin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # base
  spec.add_dependency 'public_suffix', '< 6.0.0'
  spec.add_dependency 'concurrent-ruby', '< 1.3.5'
  spec.add_dependency 'parallel', '< 1.25.0'
  spec.add_dependency 'domain_name', '< 0.6.20231109'
  spec.add_dependency 'activesupport', '< 7.0'

  # tools
  spec.add_dependency 'cocoapods', '~> 1.8'
end
