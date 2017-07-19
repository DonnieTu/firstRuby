foods=Hash.new([])

foods['a']<<["banana"] 
foods['a']<<"cake"
foods['b']<<"bread"

p foods['a']
p foods['b']
#without assignment so print {}
p foods