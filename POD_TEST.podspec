Pod::Spec.new do |spec|

  spec.name         = 'POD_TEST'
  spec.version      = '1.0.7'
  spec.summary      = 'This is my first pod framework'
  spec.description  = 'This is my first pod framework please don\'t tease me!'
  spec.homepage     = 'https://www.mysizeid.com'
  spec.license      = 'MIT'
  spec.author       = {'NetanelY' => 'netanel@mysizeid.com'}
  spec.platform     = :ios, '13.2'
  spec.source       = { :git => 'https://github.com/Mysize/POD_TEST.git', :tag => '1.0.7' }
  #spec.source_files  = 'POD_TEST'
  spec.requires_arc  = true
  spec.resources = "POD_TEST/images.bundle"
  spec.script_phase = { :name => 'Run script', :script => 'echo "\n ⏱ Removing Unused Architectures \n\n\n"'+
  'exec > /tmp/${PROJECT_NAME}_archive.log 2>&1'+
  'FRAMEWORK="YOUR_FRAMEWORK_NAME"'+
  'FRAMEWORK_EXECUTABLE_PATH="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/$FRAMEWORK.framework/$FRAMEWORK"'+
  'EXTRACTED_ARCHS=()'+
  'for ARCH in $ARCHS'+
  'do'+
  'lipo -extract "$ARCH" "$FRAMEWORK_EXECUTABLE_PATH" -o "$FRAMEWORK_EXECUTABLE_PATH-$ARCH"'+
  'EXTRACTED_ARCHS+=("$FRAMEWORK_EXECUTABLE_PATH-$ARCH")'+
  'done'+
  'lipo -o "$FRAMEWORK_EXECUTABLE_PATH-merged" -create "${EXTRACTED_ARCHS[@]}"'+
  'rm "${EXTRACTED_ARCHS[@]}"'+
  'rm "$FRAMEWORK_EXECUTABLE_PATH"'+
  'mv "$FRAMEWORK_EXECUTABLE_PATH-merged" "$FRAMEWORK_EXECUTABLE_PATH"'+
  'echo "\n ⏱ Removing Unused Architectures \n\n\n"'+
  'echo "\n\n\n 🏁 Completed removing unused architectures from your fat framework."'+
  'echo "\n\n\n 🔍 For more details please check the /tmp/${PROJECT_NAME}_archive.log file. \n\n\n"' }
  spec.ios.vendored_frameworks = 'POD_TEST.framework'
  
  #spec.public_header_files = 'POD_TEST/POD_TEST/Public/*.h'

end
