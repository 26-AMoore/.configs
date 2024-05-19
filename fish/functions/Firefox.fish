function Firefox --wraps='set -g loc $(pwd);cd /System/Volumes/Data/Applications/Firefox.app/Contents/MacOS; ./firefox $loc; cd $loc' --description 'alias Firefox echo hi'
  set -g loc $(pwd);cd /System/Volumes/Data/Applications/Firefox.app/Contents/MacOS; ./firefox $loc; cd $loc
end
