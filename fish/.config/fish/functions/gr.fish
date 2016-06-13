function gr -d "cd into the root folder of the git repo"
  cd (command git rev-parse --show-cdup)
end
