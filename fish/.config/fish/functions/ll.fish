function ll -d "List contents of directory using long format"
  # ls -lh $argv
  ls -gGhHF --color=auto $argv
end
