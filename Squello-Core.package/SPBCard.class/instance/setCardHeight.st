updating
setCardHeight

	| labelHeightsSum |
	labelHeightsSum := 0.
	self labelMorphs
		do: [:each | labelHeightsSum := labelHeightsSum + each extent y + 2].
	self extent: 280 @ ((self titleMorph extent y + labelHeightsSum + 10) max: 100).
	