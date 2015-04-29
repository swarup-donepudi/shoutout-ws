# -*- encoding: utf-8 -*-
# stub: travis 1.7.1 ruby lib

Gem::Specification.new do |s|
  s.name = "travis"
  s.version = "1.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Konstantin Haase", "Hiro Asari", "Henrik Hodne", "Aaron Hill", "joshua-anderson", "Peter Souter", "Peter van Dijk", "Max Barnash", "Carlos Palhares", "Mathias Meyer", "Thais Camilo and Konstantin Haase", "Justin Lambert", "Adrien Brault", "Laurent Petit", "Maarten van Vliet", "Mario Visic", "Miro Hron\u{10d}ok", "Neamar", "Nicolas Bessi (nbessi)", "Piotr Sarnacki", "Rapha\u{eb}l Pinson", "Tobias Wilken", "Zachary Gershman", "Zachary Scott", "jeffdh", "john muhl", "Dan Buch", "Adam Lavin", "Daniel Chatfield", "Benjamin Manns", "Jacob Burkhart", "Jonne Ha\u{df}", "Josh Kalderimis"]
  s.date = "2014-08-09"
  s.description = "CLI and Ruby client library for Travis CI"
  s.email = ["konstantin.mailinglists@googlemail.com", "asari.ruby@gmail.com", "me@henrikhodne.com", "aa1ronham@gmail.com", "j@zatigo.com", "p.morsou@gmail.com", "peter.van.dijk@netherlabs.nl", "i.am@anhero.ru", "me@xjunior.me", "meyer@paperplanes.de", "dev+narwen+rkh@rkh.im", "jlambert@eml.cc", "adrien.brault@gmail.com", "laurent.petit@gmail.com", "maartenvanvliet@gmail.com", "mario@mariovisic.com", "miro@hroncok.cz", "neamar@neamar.fr", "nbessi@users.noreply.github.com", "drogus@gmail.com", "raphael.pinson@camptocamp.com", "tw@cloudcontrol.de", "pair+zg@pivotallabs.com", "e@zzak.io", "jeffdh@gmail.com", "git@johnmuhl.com", "dan@meatballhat.com", "adam@lavoaster.co.uk", "chatfielddaniel@gmail.com", "benmanns@gmail.com", "jburkhart@engineyard.com", "me@jhass.eu", "josh.kalderimis@gmail.com"]
  s.executables = ["travis"]
  s.files = ["bin/travis"]
  s.homepage = "https://github.com/travis-ci/travis.rb"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.9"
  s.summary = "Travis CI client"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
      s.add_runtime_dependency(%q<highline>, ["~> 1.6"])
      s.add_runtime_dependency(%q<backports>, [">= 0"])
      s.add_runtime_dependency(%q<gh>, ["~> 0.13"])
      s.add_runtime_dependency(%q<launchy>, ["~> 2.1"])
      s.add_runtime_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
      s.add_runtime_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
      s.add_runtime_dependency(%q<pusher-client>, ["~> 0.4"])
      s.add_runtime_dependency(%q<addressable>, ["~> 2.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12"])
      s.add_development_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.6"])
    else
      s.add_dependency(%q<faraday>, ["~> 0.9"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
      s.add_dependency(%q<highline>, ["~> 1.6"])
      s.add_dependency(%q<backports>, [">= 0"])
      s.add_dependency(%q<gh>, ["~> 0.13"])
      s.add_dependency(%q<launchy>, ["~> 2.1"])
      s.add_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
      s.add_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
      s.add_dependency(%q<pusher-client>, ["~> 0.4"])
      s.add_dependency(%q<addressable>, ["~> 2.3"])
      s.add_dependency(%q<rspec>, ["~> 2.12"])
      s.add_dependency(%q<sinatra>, ["~> 1.3"])
      s.add_dependency(%q<rack-test>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<faraday>, ["~> 0.9"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.9.1", "~> 0.9"])
    s.add_dependency(%q<highline>, ["~> 1.6"])
    s.add_dependency(%q<backports>, [">= 0"])
    s.add_dependency(%q<gh>, ["~> 0.13"])
    s.add_dependency(%q<launchy>, ["~> 2.1"])
    s.add_dependency(%q<pry>, ["< 0.10", "~> 0.9"])
    s.add_dependency(%q<typhoeus>, [">= 0.6.8", "~> 0.6"])
    s.add_dependency(%q<pusher-client>, ["~> 0.4"])
    s.add_dependency(%q<addressable>, ["~> 2.3"])
    s.add_dependency(%q<rspec>, ["~> 2.12"])
    s.add_dependency(%q<sinatra>, ["~> 1.3"])
    s.add_dependency(%q<rack-test>, ["~> 0.6"])
  end
end