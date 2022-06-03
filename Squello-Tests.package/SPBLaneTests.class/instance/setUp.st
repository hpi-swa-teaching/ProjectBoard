running
setUp

	lane := SPBLane new.
	lane addDependent: self.
	lane provider: SPBMockGithubBoardProvider new.
	lane pasteup: (SPBPluggablePasteUpMorph new position: 100@200).
	observed := OrderedCollection new.