accessing
updateText: aText
	|provider|
	aText == self title ifFalse: [
	self title: aText asString.
	provider := SPBGithubBoardProvider new.
	provider renameColumn: (self id) to: aText asString
	].
