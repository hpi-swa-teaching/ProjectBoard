startup
open

	| prompt |
	prompt := self promptUrl.
	prompt = '' ifTrue: [^ self].
	self lastProject: prompt.
	(prompt beginsWith: self localPrefix) ifTrue: [^ self openLocal: prompt].
	^ self newWith: prompt.
	