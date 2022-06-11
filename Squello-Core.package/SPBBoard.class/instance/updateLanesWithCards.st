accessing
updateLanesWithCards

	self changed: #buildLaneAreaChildren.
	"self lanes do: [:each | each cards: OrderedCollection new]."
	self showLanesButDontRebuildCards.