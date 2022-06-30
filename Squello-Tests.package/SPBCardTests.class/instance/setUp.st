running
setUp

	card := SPBCard new.
	provider := SPBMockGithubBoardProvider new.
	card provider: provider.
	card titleMorph: TextMorph new.
	card labels: OrderedCollection new.
	card assigneeMorph: TextMorph new.
	card lane: SPBLane new.