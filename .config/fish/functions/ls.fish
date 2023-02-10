function ls --wraps='exa -G --color auto --icons -a -s type' --description 'alias ls=exa -G --color auto --icons -a -s type'
  exa -G --color auto --icons -a -s type $argv
        
end
