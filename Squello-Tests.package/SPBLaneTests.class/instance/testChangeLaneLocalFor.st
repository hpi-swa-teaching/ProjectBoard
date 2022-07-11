tests
testChangeLaneLocalFor

	| card oldLane |
	card := SPBCard new.
	oldLane := SPBLane new.
	lane changeLaneLocalFor: card in: oldLane.
	self assert: lane equals: card lane.
	