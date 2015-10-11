use v6;
use Test;
use Rototo::html;

say join '',
    (table
        (tr
            (td :selected, "hello"),
            (td "world")))

# ok p("test")
# , '<p>test</p>'
# , "p is exported right";
# 
# done;
