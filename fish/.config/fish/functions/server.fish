function server -d "Launch a simple python server"
  set -l port $argv[1]
  if not test $port
     set port 8000
  end
  open "http://localhost:$port" &
  python -m SimpleHTTPServer $port
end
