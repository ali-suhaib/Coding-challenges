#!/bin/bash

irb <<EOF
  test_string = "a-bc-lkkj>js*js"

  def only_string_reverse_alphabets str
    ar = []
    arr = str.split("").map{ |x|
      ar << x if (x.count("a-zA-Z") > 0)
      x if !(x.count("a-zA-Z") > 0)
    }
    arr = arr.map{|x|
      x || ar.pop
    }
    arr.join("")
  end
  
  only_string_reverse_alphabets test_string

EOF
