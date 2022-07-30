initialize-release
checkIfUserExists: aString
	
	| response |
	response := self api getUser: aString.
	^ ((response at: 'message') = 'Not Found') not.