csv = STDIN.read.split("\n").map do |l| 
  /^(\+|mysql>)/===l ? nil : l.sub(/^\|/, '').split(/ ?\| ?/).map{|f| %Q["#{f.strip}"]}.join(",")
end.compact.join("\n")
puts csv