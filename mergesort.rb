def merge_sort(ary)
	new_ary = []

	if ary.length == 1
		return ary
	else		
		ary1 = merge_sort(ary[0..(ary.length/2)-1])	
		ary2 = merge_sort(ary[ary.length/2..-1]	)	
	end

	until ary1.empty? || ary2.empty?
		if ary1[0] < ary2[0]
			new_ary << ary1[0]			
			ary1.delete_at(0)		
		else
			new_ary << ary2[0]
			ary2.delete_at(0)
		end 							
	end
	
	new_ary += ary2.empty? ? ary1 : ary2

	return new_ary

end

array_of_numbers = []
15.times {array_of_numbers.push(rand(1000))}
puts merge_sort(array_of_numbers).to_s