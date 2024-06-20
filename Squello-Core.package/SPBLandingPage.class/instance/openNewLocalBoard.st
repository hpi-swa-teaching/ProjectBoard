actions
openNewLocalBoard
	
	| prompt boardName |
	prompt := FillInTheBlank request: 'Enter a name for the local board.'.
	boardName := SPBBoard localPrefix, prompt.
	(SPBBoardSaver defaultSaver contains:  boardName)
		ifTrue: [UIManager inform: 'A board with this name already exists'. ^self.].
	SPBBoard openFromPrompt: boardName.
	self updateUI.