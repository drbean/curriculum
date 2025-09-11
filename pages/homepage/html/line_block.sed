#!sed -f

# prepend line_block "|" marker if missing
/%\|^$/!s/^\(.*\)$/| \1/

# replace "%" fortune strfile delimiter with ATX ### headings paragraphs
s/^%$/\n###\n/
