module Rototo {
    sub mktag (Str $tag ) is export {
        sub (*%attrs, *@data) {
            "<$tag"
            , %attrs.kv.map( -> $k, $v {
                if ( $v ~~ Bool ) { Q:qq< $k> } 
                else              { Q:qq< $k="$v"> } 
            })
            , ">", |@data , "</$tag>";
        }
    }

    sub export-tag (Str $tag, :$as = $tag ) { "\&:$as" => mktag $tag }
} 

