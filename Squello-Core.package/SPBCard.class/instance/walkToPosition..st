accessing
walkToPosition: aPoint

		(AnimPropertyAnimation
		on: self
		property: #position
		start: self position
		end: aPoint
		duration: 200)
		register;
		start: #deleteWhenFinished.
		
		Transcript show: 'moved!' , Character cr.