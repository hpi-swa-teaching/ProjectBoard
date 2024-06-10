initialize-release
makeLocal

	self isLocal: true.
	self boardProvider: SPBLocalBoardProvider new.