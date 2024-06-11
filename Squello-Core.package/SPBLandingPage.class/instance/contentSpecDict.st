toolbuilder
contentSpecDict

	^ {'Recent Boards' -> {
			self buildRecentLocalBoardsSpecWith: self usedBuilder.
			self buildRecentGitHubBoardsSpecWith: self usedBuilder.}.
		} asDictionary.