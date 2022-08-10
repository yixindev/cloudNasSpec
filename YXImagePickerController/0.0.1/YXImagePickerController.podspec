Pod::Spec.new do |s|
  s.name          = "YXImagePickerController"
  s.version       = "0.0.1"
  s.summary       = "DKImagePickerController is a highly customizable, pure-Swift library."
  s.homepage      = "https://github.com/zhangao0086/DKImagePickerController"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Bannings" => "zhangao0086@gmail.com" }
  s.platform      = :ios, "10.0"
  s.source        = { :git => "git@github.com:yixindev/YXImagePickerController.git", 
                     :tag => "0.0.1" }
  
  s.requires_arc  = true
  
  s.swift_version = ['4.2', '5']

  s.subspec 'Core' do |core|
    core.dependency 'YXImagePickerController/ImageDataManager'
    core.dependency 'YXImagePickerController/Resource'

    core.frameworks    = "Foundation", "UIKit", "Photos"

    core.source_files = "Sources/DKImagePickerController/*.{h,swift}", "Sources/DKImagePickerController/View/**/*.swift"
  end

  s.subspec 'ImageDataManager' do |image|
    image.source_files = "Sources/DKImageDataManager/**/*.swift"
  end

  s.subspec 'Resource' do |resource|
    resource.resource_bundle = { "DKImagePickerController" => "Sources/DKImagePickerController/Resource/Resources/*" }

    resource.source_files = "Sources/DKImagePickerController/Resource/DKImagePickerControllerResource.swift"
  end

  s.subspec 'PhotoGallery' do |gallery|
    gallery.dependency 'YXImagePickerController/Core'
    gallery.dependency 'DKPhotoGallery'

    gallery.source_files = "Sources/Extensions/DKImageExtensionGallery.swift"
  end

  s.subspec 'Camera' do |camera|
    camera.dependency 'YXImagePickerController/Core'
    camera.dependency 'DKCamera'

    camera.source_files = "Sources/Extensions/DKImageExtensionCamera.swift"
  end

  s.subspec 'InlineCamera' do |inlineCamera|
    inlineCamera.dependency 'YXImagePickerController/Core'
    inlineCamera.dependency 'DKCamera'

    inlineCamera.source_files = "Sources/Extensions/DKImageExtensionInlineCamera.swift"
  end

  s.subspec 'PhotoEditor' do |photoEditor|
    photoEditor.dependency 'YXImagePickerController/Core'
    photoEditor.dependency 'CropViewController', '~> 2.5'

    photoEditor.source_files = "Sources/Extensions/DKImageExtensionPhotoCropper.swift"
  end

end
