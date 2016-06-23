function ip -d "Display IP-address"
  set -l param "param not given"

  if test $argv[1]
    set param $argv[1]
  end

  switch $param
  case "-i" "--internal" "local"
    if test -e ipconfig
      ipconfig getifaddr en0
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
