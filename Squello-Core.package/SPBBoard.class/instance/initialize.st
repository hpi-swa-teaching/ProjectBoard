initialize-release
initialize

	super initialize.
	self isLocal: false.
	self
		boardProvider: SPBGithubBoardProvider new.