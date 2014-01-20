describe "calculator", ->

	Given -> @calculator = new Calculator

	describe "should not be undefined or null", ->
		Then -> @calculator?

	describe "sum", ->

		describe "no numbers are provided", ->
			Then -> expect(=> @calculator.sum()).toThrow 'At least two numbers are required to calculate the sum.'
	
		describe "only one number is provided", ->
			Then -> expect(=> @calculator.sum 1).toThrow 'At least two numbers are required to calculate the sum.'

		describe "should return the correct value when two numbers are provided", ->
			When  -> @result = @calculator.sum 1, 1
			Then  -> @result == 2

		describe "more than two numbers", ->
			When -> @result = @calculator.sum 5, 7, 8
			Then -> @result == 20

		describe "ten numbers", ->
			When -> @result = @calculator.sum 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
			Then -> @result == 55