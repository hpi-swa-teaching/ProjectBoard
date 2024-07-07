instance creation
newWithName: aString

	^ self withJson: (self defaultBoardJson: aString).