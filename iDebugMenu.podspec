Pod::Spec.new do |spec|
  spec.name         = "iDebugMenu"
  spec.version      = "0.1.0"
  spec.summary      = "iDebugMenu is a library for iOS debug"
  spec.description  = "iDebugMenu is a library for iOS debug"
  spec.homepage     = "https://github.com/Toni77777/iDebugMenu"
  spec.license      = "MIT"
  spec.author             = { "Anton Paliakov" => "toxa95401@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/Toni77777/iDebugMenu.git", :tag => "#{spec.version}" }
  spec.source_files  = "iDebugMenu/*.swift"
  spec.swift_version = "4.2"
end