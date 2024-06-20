accessing
boardName

	boardName ifNil: [boardName := self boardProvider queryBoardName].
	^ boardName.