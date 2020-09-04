# Defined in - @ line 1
function gpo --wraps='git pull origin' --description 'alias gpo=git pull origin'
  git pull origin $argv;
end
