Gem::Specification.new do |s|
  s.name = 'botbase-module-rsc'
  s.version = '0.3.2'
  s.summary = 'A botbase gem service module to run remote RSF jobs using the Rsc gem.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/botbase-module-rsc.rb']
  s.add_runtime_dependency('rsc', '~> 0.2', '>=0.2.2')
  s.signing_key = '../privatekeys/botbase-module-rsc.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/botbase-module-rsc'
end
