#!sed -f

# wildcard: https://unix.stackexchange.com/questions/115409/reverse-order-of-paragraphs-in-file
# add, remove whitespace lines to prevent reversing

:getpara
   ${
      s/$/\
/
      G
      s/\n\n$//
      q
   }
   N
   /\n$/!bgetpara
G
h
$!d
s/\n\n$//
q
