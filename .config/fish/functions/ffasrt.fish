function ffasrt --description "format farsi srt"
  for file in $argv
    if ! head -30 $file | grep -q '[آ-ی]'
      # nvim -c 'e ++enc=cp1256' -c 'wq ++enc=utf-8' $file

      python -c "
with open('$file', 'r', encoding='cp1256') as f:
    content = f.read()
with open('$file', 'w', encoding='utf-8') as f:
    f.write(content)
"
      and echo "Re-encoded."
    end

    sed -i -E \
      -e 's/ face="[^"]+"//g' \
      -e 's/ size="[0-9]+"//g' \
      -e 's/ي/ی/g' \
      -e 's/ك/ک/g' \
      -e 's/ه[ ‌]ی([^آ-ی]|$)/ۀ\1/g' \
      -e 's/ه ای([^آ-ی]|$)/ه‌ای\1/g' \
      $file
    echo $file
  end
end
