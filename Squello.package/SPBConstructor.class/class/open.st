as yet unclassified
open

	| prompt |
	prompt := FillInTheBlank request: 'Put in HTTPS URL of your project:'.
	self newWith: prompt.