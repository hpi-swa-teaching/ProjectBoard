accessing
activeCard

	^ activeCard
		ifNil: [activeCard := SPBNullCard new].