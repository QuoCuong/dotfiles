function ll --wraps='exa -l --color always --icons -a -s type' --description 'alias ll=exa -l --color always --icons -a -s type'
  exa -l --color always --icons -a -s type $argv
        
end
