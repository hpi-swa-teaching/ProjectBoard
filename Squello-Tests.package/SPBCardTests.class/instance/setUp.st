running
setUp

	card := SPBCard new.
	provider := SPBMockGithubBoardProvider new.
	card boardProvider: provider.
	card labels: OrderedCollection new.
	card column: SPBColumn new.