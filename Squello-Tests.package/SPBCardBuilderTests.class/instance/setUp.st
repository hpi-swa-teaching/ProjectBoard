running
setUp

	builder := SPBCardBuilder new.
	provider := SPBMockGithubBoardProvider new.
	builder provider: provider.