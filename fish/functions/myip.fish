function myip --wraps='curl ifcfg.me' --description 'alias myip=curl ifcfg.me'
  curl ifcfg.me $argv
        
end
