initialize-release
checkIfUserExists: aString

	^ (((self api getUser: aString) at: 'message') = 'Not Found') not.