function ls --wraps='exa -l --color always --icons -a -s type' --description 'alias ls=exa -l --color always --icons -a -s type'
  exa -l --color always --icons -a -s type $argv; 
end
