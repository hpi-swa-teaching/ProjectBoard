running
setUp

	builder := SPBCardBuilder new.
	provider := SPBMockGithubBoardProvider new.
	changeProvider := SPBGithubChangeProvider new.
	builder boardProvider: provider.
	builder changeProvider: changeProvider.