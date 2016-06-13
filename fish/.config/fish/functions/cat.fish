function cat -d "concatenate files and print on the standard output"
  pygmentize -O style=monokai -f console256 -g $argv
end
