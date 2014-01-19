class @Calculator
	
	sum: ->
		if not arguments? or arguments.length < 2
			throw 'At least two numbers are required to calculate the sum.'
		[].reduce.call arguments, (addend1, addend2) -> addend1 + addend2
