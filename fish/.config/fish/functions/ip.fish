function ip -d "Display ip address"
  set -l param "param was not provided"

  if test $argv[1]
    set param $argv[1]
  end

  switch $param
  case "-i" "--internal" "local"
    # the internal ip address for my macbook air
    if test (uname) = "Darwin"
      ifconfig en0 | grep broadcast | awk '{print $2; exit}'

    # the internal ip address for my linux laptop
    else
      ifconfig wlan0 | grep Bcast | awk '{print $2; exit}' | sed s/addr://
    end

  case "-e" "--external" "www"
    dig +short myip.opendns.com @resolver1.opendns.com

  case "*"
    echo "Usage: ip [PARAM]"
    echo "Display either the internal or external ip address. "
    echo ""
    echo " -i, --internal             Display the internal ip address"
    echo " -e, --external             Display the external ip address"
    echo " local                      An alias for --internal"
    echo " www                        An alias for --external"
  end
end
