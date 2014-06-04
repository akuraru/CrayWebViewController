Pod::Spec.new do |s|
  s.name         = "CrayWebViewController"
  s.version      = "0.1.0"
  s.summary      = "Easy to use commonplace UIWebViewController."
  s.homepage     = "https://github.com/azu/CrayWebViewController"
  s.screenshots  = "http://gyazo.com/88c8b0a4d606815f813d7728b66a0e91.gif"
  s.license      = {
      :type => "MIT",
      :file => "LICENSE"
  }
  s.author       = {"azu" => "info@efcl.info"}
  s.platform     = :ios, '6.0'
  s.source       = {
      :git => "https://github.com/azu/CrayWebViewController.git",
      :tag => s.version.to_s
  }
  s.source_files = "Lib/**/*.{h,m}"
  s.resources    = ["Lib/**/*.storyboard", "Lib/**/*.bundle"]

  s.requires_arc = true
  s.dependency "NJKWebViewProgress"
  s.dependency "TUSafariActivity"
end
