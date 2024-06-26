function mn --description 'match file names (keep .ext)'
  set org $argv[1]
  set dest (string replace -r '\..{2,5}$' '' $argv[2])
  set org_ext (string match -r '\..{2,5}$' $org)
  mv "$org" "$dest$org_ext"
  echo "$dest$org_ext"
end
