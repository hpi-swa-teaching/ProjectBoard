initialize-release
initialize

	super initialize.
	self isLocal: false.
	self
		boardProvider: SPBGithubBoardProvider new;
		changeProvider: SPBGithubChangeProvider new.
		
	self changeProvider api: self boardProvider api.