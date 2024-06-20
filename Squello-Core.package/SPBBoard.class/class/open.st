startup
open

	| prompt |
	prompt := self promptUrl.
	prompt = '' ifTrue: [^ self].
	self lastProject: prompt.
	^ self openFromPrompt: prompt.