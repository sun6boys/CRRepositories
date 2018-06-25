
Pod::Spec.new do |s|


  s.name         = "CRGoodsDetail"
  s.version      = "5"
  s.summary      = "A short description of CRGoodsDetail."

  s.description  = <<-DESC
                   A longer description of CRGoodsDetail in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/sun6boys/CRGoodsDetail"


   s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "Charon" => "sun6boys@126.com" }

   s.platform     = :ios, "7.0"



  s.source       = { :git => "https://github.com/sun6boys/CRGoodsDetail.git", :tag => s.version }

 s.requires_arc = true

  s.subspec 'Protocol' do |ss|
    ss.source_files = 'CRGoodsDetail/CRGoodsDetail/Protocol/*.{h,m}'
    ss.framework = "UIKit"
  end
  s.subspec 'Source' do |ss|
    ss.source_files = 'CRGoodsDetail/CRGoodsDetail/Source/*.{h,m}'
    ss.framework  = "UIKit"
    ss.dependency  "CRConfirmOrder/Protocol"
    ss.dependency  "CRProtocolManager"
  end
  s.subspec 'ServiceProvider' do |ss|
    ss.source_files = 'CRGoodsDetail/CRGoodsDetail/ServiceProvider/*.{h,m}'
    ss.dependency  "CRGoodsDetail/Protocol"
    ss.dependency  "CRProtocolManager"
    ss.dependency  "CRGoodsDetail/Source"
   end
end
