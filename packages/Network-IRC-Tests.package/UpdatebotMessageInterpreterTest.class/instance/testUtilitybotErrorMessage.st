testing
testUtilitybotErrorMessage
	
	| updatebot |
	
	updatebot := UpdatebotMessageInterpreter new.
	
	self assert: (updatebot parseIRCMessage: 'client : !lb') equals: false.
	self assert: (updatebot errorMessage) equals: nil