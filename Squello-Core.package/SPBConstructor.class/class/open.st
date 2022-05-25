instance creation
open

	| prompt |
	prompt := FillInTheBlank request: 'Put in HTTPS URL of your project:' initialAnswer: (self lastProject ifNotNil: [self lastProject] ifNil: ['']) onCancelReturn: ''.
	prompt = '' ifTrue: [^ self].
	self lastProject: prompt.
	self newWith: prompt.