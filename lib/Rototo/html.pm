module X::html {}

sub EXPORTER {
    { :p(-> $v { "<p>$v</p>" })
    }
}
