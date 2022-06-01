startup
open

	| prompt |
	prompt := FillInTheBlank request: 'Please enter GitHub URL of your project board:' initialAnswer: (self lastProject ifNotNil: [self lastProject] ifNil: ['']) onCancelReturn: ''.
	prompt = '' ifTrue: [^ self].
	self lastProject: prompt.
	^self newWith: prompt.
	