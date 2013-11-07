utf = IO.read("index.html")

em = utf.scan(/<em[^>]*>&#([^;]*);<\/em>/)
dd = utf.scan(/<dd>&#38;#([^;]*);<\/dd>/)

em = em.drop(3).map{|i| i[0].to_i}
dd = dd.drop(2).map{|i| i[0].to_i}
order = em.sort

is_same = em == dd
is_order = em == order

puts "Are actual entities and shown codes the same?: #{is_same}"
if !is_same
  p em
  p dd
else
  puts "Are entities sorted correctly?: #{is_order}"
  if !is_order
    p em
    p order
  end
end


