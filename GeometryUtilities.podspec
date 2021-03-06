Pod::Spec.new do |s|

  s.name         = "GeometryUtilities"
  s.version      = "2.1.1"
  s.summary      = "A collection of utilities to handle geometry in WKT format"

  s.description  = <<-DESC
  Collection of utilities to handle geometry in WKT format, multipolygons and
  integrate both in `MapKit`.
                   DESC

  s.homepage          = "https://github.com/visualNACert/GeometryUtilities"
  s.documentation_url = "https://visualnacert.github.io/GeometryUtilities"

  s.license      = { :type => "LGPL2", :file => "LICENSE" }

  s.authors      = {
    "visualNACert team" => "",
    "Lluís Ulzurrun de Asanza i Sàez" => "lulzurrun@visualnacert.com"
  }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"

  s.source       = {
  	:git => "https://github.com/visualNACert/GeometryUtilities.git",
  	:tag => "#{s.version}"
  }

  s.ios.source_files = 'Source/{iOS}/**/*', 'Source/*.{h,m,swift}'
  s.osx.source_files = 'Source/{macOS}/**/*', 'Source/*.{h,m,swift}'

  s.dependency 'StringUtilities', '~> 2'

end
