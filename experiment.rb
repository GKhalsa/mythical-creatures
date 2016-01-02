hashes = [{1=>'HELLO'},{ 2 =>'HELP'}, {3 => nil }]

hashes.each do |hash|
  hash.values.each do |v|
     
     puts v
  end

end
