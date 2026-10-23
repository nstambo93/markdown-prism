xcodebuild -scheme MarkdownPrism -configuration Debug build 2>&1 | tail -5

/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f /Applications/MarkdownPrism.app
pluginkit -a /Applications/MarkdownPrism.app/Contents/PlugIns/MarkdownPrismQuickLook.appex
qlmanage -r
qlmanage -r cache
killall QuickLookUIService
