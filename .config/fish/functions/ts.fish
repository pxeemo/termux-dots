function ts --description "convert mkv and ass to srt"
  set _flag_max 0 # sub stream index (default: 0)
  argparse "#max" -- $argv
  for org in $argv
    set -l srt "$(string replace -r '\.(mkv|ass)$' '.srt' "$org")"
    ffmpeg -v 8 -i "$org" -map "0:s:$_flag_max" "$srt"

    ffasrt "$srt"
  end
end
