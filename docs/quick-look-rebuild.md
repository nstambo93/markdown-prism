## Quick Look re-registration (macOS 26)
sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -delete -domain local -domain system -domain user

## reboot
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f /Applications/MarkdownPrism.app
pluginkit -a /Applications/MarkdownPrism.app/Contents/PlugIns/MarkdownPrismQuickLook.appex
qlmanage -r
qlmanage -r cache
killall QuickLookUIService
killall Finder
