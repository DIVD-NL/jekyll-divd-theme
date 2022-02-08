# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-divd"
  spec.version       = "0.1.0"
  spec.authors       = ["Frank Breedijk"]
  spec.email         = ["f.breedijk@divd.nl"]

  spec.summary       = "Generic theme for DIVD sites"
  spec.homepage      = "https://divd.nl"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml|.htaccess)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
