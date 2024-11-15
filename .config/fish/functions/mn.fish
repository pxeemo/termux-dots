function mn --description 'match file names (keep .ext)'
  set org $argv[1]
  set org_ext (path extension $org)
  set dest (path change-extension $org_ext $argv[2])

  mv $org $dest
  echo $dest
end
