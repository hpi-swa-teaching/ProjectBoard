running
setUp

	builder := SPBCardBuilder new.
	provider := SPBMockGithubBoardProvider new.
	changeProvider := SPBGithubChangeProvider new.
	builder provider: provider.