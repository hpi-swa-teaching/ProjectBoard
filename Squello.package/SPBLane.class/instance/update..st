accessing
update: anObject
	|provider|
	self titleWindow text ~~ self title ifTrue: [
		self title: self titleWindow text.
	provider := SPBGithubBoardProvider new.
	provider renameColumn: (self id) to: self titleWindow text
	].
