as yet unclassified
setUp

	provider := SPBMockGithubBoardProvider new.
	board := SPBBoard new.
	board boardProvider: SPBMockGithubBoardProvider new.
	board usedBuilder: SPBMorphicToolBuilder new.
	board sidebar: (SPBSidebar new boardProvider: board boardProvider).
