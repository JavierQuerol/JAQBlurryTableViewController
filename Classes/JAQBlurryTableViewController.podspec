Pod::Spec.new do |s|
  s.name         = "JAQBlurryTableViewController"
  s.version      = "0.0.1"
  s.summary      = "A short description of JAQBlurryTableViewController."
  s.description  = <<-DESC
                   This is only a test
                   DESC
  s.homepage     = "https://github.com/JavierQuerol/JAQBlurryTableViewController"
  # s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license      = { :type => 'MIT'}
  s.author       = { "Javier Querol" => "javier.querol@treenovum.es" }
  s.source       = { :git => "git@github.com:JavierQuerol/JAQBlurryTableViewController.git", :tag => "0.0.1" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
