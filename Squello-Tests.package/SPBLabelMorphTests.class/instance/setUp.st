running
setUp

	label := SPBLabel new
		title: 'TestLabel';
		color: Color turquoise;
		id: 0;
		yourself.
	morph := SPBLabelMorph createFromLabel: label.