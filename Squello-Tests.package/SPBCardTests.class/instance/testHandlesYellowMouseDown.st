tests
testHandlesYellowMouseDown

	| user |
	user := 'octocat'.
	self assert: nil equals: card user.
	card user: user.
	self assert: user equals: card user.