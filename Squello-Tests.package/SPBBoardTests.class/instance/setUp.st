as yet unclassified
setUp

	board := SPBBoard new.
	board provider: SPBMockGithubBoardProvider new.
	board usedBuilder: SPBMorphicToolBuilder new.