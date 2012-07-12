# -*- encoding: utf-8 -*-
require File.expand_path('../lib/huawei_3g_unlock/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alfred R. Rowe"]
  gem.email         = ["alfred.rowe@gmail.com"]
  gem.description   = %q{A ruby implementation of Huawei 3G modem unlock/flash code generator. Tested on E1550 Models, I am positive it might work on other similar models. Comes also with a commandline tool(huawei3g) to quickly generate codes by specifying modems IMEI number.}
  gem.summary       = %q{Huawei Mobile Broadband Carrier Unlock/Flash Code Generator}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "huawei_3g_unlock"
  gem.require_paths = ["lib"]
  gem.version       = Huawei3gUnlock::VERSION
end
