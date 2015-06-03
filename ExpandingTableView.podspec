Pod::Spec.new do |s|
   s.name = 'ExpandingTableView'
   s.version = '1.0.1'
   s.license = 'MIT'

   s.summary = 'An iOS framework for expanding table view cells.'
   s.homepage = 'https://github.com/jozsef-vesza/ExpandingTableView'

   s.social_media_url = 'https://twitter.com/j_vesza'
   s.authors = { 'József Vesza' => 'jozsef.vesza@outlook.com' }

   s.source = { :git => 'https://github.com/jozsef-vesza/ExpandingTableView.git', :tag => s.version }
   s.source_files = 'ExpandingTableView/ExpandingTableView/*.swift'

   s.platform = :ios, '8.0'
   s.frameworks = 'Foundation'
   s.requires_arc = true
end
