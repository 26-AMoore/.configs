function ls --wraps='clear; pwd; eza -F --git --icons=always' --description 'alias ls=clear; pwd; eza -F --git --icons=always'
  clear; pwd; eza -F --git --icons=always $argv
        
end
