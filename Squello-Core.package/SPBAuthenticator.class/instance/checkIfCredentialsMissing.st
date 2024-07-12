authentication
checkIfCredentialsMissing

	^ self username isNil or: [self token isNil].