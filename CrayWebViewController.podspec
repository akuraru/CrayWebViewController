Pod::Spec.new do |s|
  s.name         = "CrayWebViewController"
  s.version      = "0.7.5"
  s.summary      = "Easy to use commonplace UIWebViewController."
  s.homepage     = "https://github.com/plusr/CrayWebViewController"
  s.screenshots  = "http://gyazo.com/88c8b0a4d606815f813d7728b66a0e91.gif"
  s.license      = {
      :type => "MIT",
      :file => "LICENSE"
  }
  s.author       = {"azu" => "info@efcl.info"}
  s.platform     = :ios, '6.0'
  s.source       = {
      :git => "https://github.com/plusr/CrayWebViewController.git",
      :tag => s.version.to_s
  }

  s.requires_arc = true

  s.subspec 'Core' do |a|
    a.dependency "NJKWebViewProgress"
    a.source_files = "Lib/CrayTabWebViewController/*.{h,m}"
  end
  s.subspec 'CrayNavigationController' do |a|
    a.source_files  = 'Lib/CrayNavigationController/*.{h,m}'
  end
  s.subspec 'CrayBundleSupport' do |a|
    a.resources    = ["Lib/**/*.bundle"]
    a.source_files  = 'Lib/CrayBundleSupport/*.{h,m}'
  end

  s.subspec 'CrayStandaloneWebViewController' do |a|
    a.resources    = ["Lib/CrayStandaloneWebViewController/*.storyboard"]
    a.source_files  = 'Lib/CrayStandaloneWebViewController/*.{h,m}'
    a.dependency 'CrayWebViewController/Core'
    a.dependency "TUSafariActivity"
  end
  s.subspec 'CrayAllInOneBackWebViewController' do |a|
    a.resources    = ["Lib/CrayAllInOneBackWebViewController/*.storyboard"]
    a.source_files  = 'Lib/CrayAllInOneBackWebViewController/*.{h,m}'
    a.dependency 'CrayWebViewController/CrayStandaloneWebViewController'
  end
  s.subspec 'CrayModalWebViewController' do |a|
    a.resources    = ["Lib/CrayModalWebViewController/*.storyboard"]
    a.source_files  = 'Lib/CrayModalWebViewController/*.{h,m}'
    a.dependency 'CrayWebViewController/CrayAllInOneBackWebViewController'
    a.dependency 'CrayWebViewController/CrayNavigationController'
    a.dependency 'CrayWebViewController/CrayBundleSupport'
  end
end
