actions
renameBoardFromButton: aString

	| prompt boardName |
	prompt := FillInTheBlank request: 'Enter a new name for the local board.'.
	boardName := SPBBoard localPrefix, prompt.
	(SPBBoardSaver defaultSaver contains: boardName)
		ifTrue: [UIManager inform: 'A board with this name already exists'. ^ self.].
	SPBBoardSaver defaultSaver save: (SPBBoardSaver defaultSaver load: aString) as: boardName.
	SPBBoardSaver defaultSaver delete: aString.
	self updateUI.