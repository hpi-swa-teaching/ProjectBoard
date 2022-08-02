instance creation
newWith: anSPBGithubBoardProvider

	| instance |
	instance := self new.
	instance boardProvider: anSPBGithubBoardProvider.
	^ instance.