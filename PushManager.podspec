

Pod::Spec.new do |s|  

  s.name         = "PushManager"
  s.version      = "1.0"
  s.summary      = "Push Notification utility methods. "
  s.license      = {
    :type => 'Free',
    :text => <<-LICENSE
              All contribution and reuse is welcome
              LICENSE
  }
  s.homepage     = "https://github.com/selim1377/pushmanager"
  s.author       = { "Selim Bakdemir" => "selim.bakdemir@gmail.com" }
  s.platform     = :ios, '5.0'
  s.source       = { 
      :git => "https://github.com/selim1377/pushmanager.git", 
      :tag => "v1.0" 
  }
  s.source_files  =  'PushManager/*.{h,m}'
end
