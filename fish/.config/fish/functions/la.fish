function la -d "List directory contents including hidden files using long format"
  # ls -lah $argv
  ls -gGahHF --color=auto $argv
end
