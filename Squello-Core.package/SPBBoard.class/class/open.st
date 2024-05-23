startup
open

	| prompt |
	prompt := self promptUrl.
	prompt = '' ifTrue: [^ self].
	self lastProject: prompt.
	(prompt beginsWith: 'local') ifTrue: [^ self newLocalWith: prompt].
	^ self newWith: prompt.
	