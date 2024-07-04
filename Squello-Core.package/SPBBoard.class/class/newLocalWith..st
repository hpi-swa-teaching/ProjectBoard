local-boards
newLocalWith: aSPBLocalBoardProvider
	
	^ self new
		makeLocal: aSPBLocalBoardProvider;
		buildAndOpen;
		yourself.