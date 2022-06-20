as yet unclassified
setUp

	provider := SPBMockGithubBoardProvider new.
	board := SPBBoard new.
	board provider: SPBMockGithubBoardProvider new.
	board usedBuilder: SPBMorphicToolBuilder new.
