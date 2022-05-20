initialisation
initialize
	
	super initialize.
	
	self
		builder: MorphicToolBuilder new;
		provider: SPBGithubBoardProvider new;
		buildWindow.
	self builder open: self window.