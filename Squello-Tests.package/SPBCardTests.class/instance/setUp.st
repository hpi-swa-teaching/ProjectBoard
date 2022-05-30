running
setUp

	card := SPBCard new.
	provider := SPBMockGithubBoardProvider new.
	card provider: provider.
	card titleMorph: TextMorph new.