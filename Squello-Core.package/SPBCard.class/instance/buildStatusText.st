initialization
buildStatusText

	| statusMorph |
	statusMorph := TextMorph new
		lock;
		yourself.
	self
		addMorph: statusMorph;
		statusModel: statusMorph.