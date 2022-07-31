accessing
changeProvider: anSPBGithubChangeProvider

	changeProvider := anSPBGithubChangeProvider.
	changeProvider addDependent: self.
	self cardBuilder changeProvider: anSPBGithubChangeProvider.