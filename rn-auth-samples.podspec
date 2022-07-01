require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "rn-auth-samples"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
  rn-auth-samples
                   DESC
  s.homepage     = "https://gitlab.com/rvuyyuru/mobile/rn-auth-samples"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Raja Shekar" => "vuyyururajashekarreddy2222@gamil.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://gitlab.com/rvuyyuru/mobile/rn-auth-samples", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end

