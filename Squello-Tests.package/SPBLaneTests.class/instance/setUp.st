running
setUp

	lane := SPBLane new.
	lane addDependent: self.
	lane boardProvider: SPBMockGithubBoardProvider new.
	lane changeProvider: SPBGithubChangeProvider new.
	lane pasteup: (SPBPluggablePasteUpMorph new position: 100@200).
	observed := OrderedCollection new.