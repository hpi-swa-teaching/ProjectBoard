updating-local
setCardHeight

	| labelHeightsSum |
	labelHeightsSum := 0.
	self labelModels
		do: [:label | labelHeightsSum := labelHeightsSum + label extent y + self inbetweenLabelOffset].
	self extent: self class defaultCardExtent x @ ((self titleModel extent y + labelHeightsSum + self labelTitleOffset) max: self class defaultCardExtent y).