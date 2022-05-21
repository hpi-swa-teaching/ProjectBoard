initialisation
initialize
	
	super initialize.
	
	self
		builder: ToolBuilder default;
		provider: SPBGithubBoardProvider new;
		buildWindow.
	self builder open: self window.