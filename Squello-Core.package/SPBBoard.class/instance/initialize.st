initialize-release
initialize

	super initialize.
	self
		provider: SPBGithubBoardProvider new;
		changeProvider: SPBGithubChangeProvider new.
		
	self changeProvider api: self provider api.