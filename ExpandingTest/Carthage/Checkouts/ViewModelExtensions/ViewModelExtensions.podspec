Pod::Spec.new do |s|
   s.name = 'ViewModelExtensions'
   s.version = '1.1'
   s.license = 'MIT'

   s.summary = 'A convenience library to inject view models into view controllers defined in Interface Builder.'
   s.homepage = 'https://github.com/jozsef-vesza/ViewModelExtensions'

   s.social_media_url = 'https://twitter.com/j_vesza'
   s.authors = { 'József Vesza' => 'jozsef.vesza@outlook.com' }

   s.source = { :git => 'https://github.com/jozsef-vesza/ViewModelExtensions.git', :tag => s.version }
   s.source_files = '**/*.swift'

   s.platform = :ios, '8.0'
   s.frameworks = 'Foundation', 'XCTest'
   s.requires_arc = true
end
