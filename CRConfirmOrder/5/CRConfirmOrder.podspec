
Pod::Spec.new do |s|


  s.name         = "CRConfirmOrder"
  s.version      = "5"
  s.summary      = "A short description of CRConfirmOrder."

  s.description  = <<-DESC
                   A longer description of CRConfirmOrder in Markdown format.

                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/sun6boys/CRConfirmOrder"
   s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Charon" => "sun6boys@126.com" }

   s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/sun6boys/CRConfirmOrder.git", :tag => s.version }




   s.requires_arc = true

  s.subspec 'Protocol' do |ss|
    ss.source_files = 'CRConfirmOrder/CRConfirmOrder/Protocol/*.{h,m}'
    ss.framework = "UIKit"
  end
  s.subspec 'Source' do |ss|
    ss.source_files = 'CRConfirmOrder/CRConfirmOrder/Source/*.{h,m}'
    ss.framework  = "UIKit"
  end
  s.subspec 'ServiceProvider' do |ss|
    ss.source_files = 'CRConfirmOrder/CRConfirmOrder/ServiceProvider/*.{h,m}'
    ss.dependency "CRConfirmOrder/Protocol"
    ss.dependency "CRProtocolManager"
    ss.dependency "CRConfirmOrder/Source"
  end

end
