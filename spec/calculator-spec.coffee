describe "calculator", ->

	beforeEach => 
		@calculator = new Calculator()

	afterEach =>
		@result = undefined

	describe "sum", =>

		describe "no numbers are provided", =>
			Then => expect(=> @calculator.sum()).toThrow 'At least two numbers are required to calculate the sum.'
	
		describe "only one number is provided", =>
			Then => expect(=> @calculator.sum 1).toThrow 'At least two numbers are required to calculate the sum.'

		describe "two numbers", =>
			When  => @result = @calculator.sum 1, 1
			Then  => expect(@result).toBe 2

		describe "more than two numbers", =>
			When => @result = @calculator.sum 5,7,8
			Then => expect(@result).toBe 20

		describe "ten numbers", =>
			When => @result = @calculator.sum 1,2,3,4,5,6,7,8,9,10
			Then => expect(@result).toBe 55
