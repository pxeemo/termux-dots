function ts --description "convert mkv and ass to srt"
  set _flag_max 0 # sub stream index (default: 0)
  argparse "#max" -- $argv
  for org in $argv
    set -l srt "$(string replace -r '\.(mkv|ass)$' '.srt' "$org")"
    ffmpeg -i "$org" -map "0:s:$_flag_max" "$srt"

    sed -i -E \
      -e 's/ face="[^"]+"//g' \
      -e 's/ size="[0-9]+"//g' \
      -e 's/ي/ی/g' \
      -e 's/ه( |‌)ی /ۀ /g' \
      "$srt"
  end
end
