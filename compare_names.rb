def shuffle_names(a)
	name_array = a
	big_array = []

	while name_array.count >3

		little_array = []

		2.times do
			little_array.push(name_array.delete_at(rand(name_array.length)))
		end

		big_array.push(little_array)
	end

	big_array.push(name_array)

	big_array
end

def clean(names)
	group = ""
	names = names
	
	names.each do |pair|
		if pair.include? (pair[2])
			group << <input type="checkbox" name="somename" value="groupof3"/> + pair[0] + ", " + pair[1] + ", and " + pair[2] + "<br>"

		else
			group << <input type="checkbox" name="somename" value="groupof2"/> +  pair[0] + " and " + pair[1] + "<br>"
		end
	end
   
	group
end

#p clean(shuffle_names(["Katie Collins","Aaron Camersi","Derrick Gillispie","Andrew Farley","Adrian Sauls","John Murphy","Steven Miller","Victoria Frame","Stephanie Frame","Chris Phelps","Derick West","Ty Cook","Robert Caldwell","Marcus Folks","Tyler Richards","Mike Handy", "Random Odd Person"]))