function awsub
  set tempdir (mktemp -d)
  7z x $argv[1] -o$tempdir >/dev/null

  set ass (mn $tempdir/**.ass $argv[2])
  echo $ass
  
  if test -f $ass && ts $ass
    rm $argv[1]
  end
end
