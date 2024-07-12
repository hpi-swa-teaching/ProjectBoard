accessing
boardName

	boardName 
		ifNil: [self boardName: self boardProvider queryBoardName].
	^ boardName.