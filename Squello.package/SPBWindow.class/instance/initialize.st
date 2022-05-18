as yet unclassified
initialize
	|lanes frame column name|
	super initialize.
	
	self
		setLabel: 'Project Board';
		width: 1500;
		height: 700;
		openInWorld.
		
	lanes := SPBGithubBoardProvider new queryColumns: 14427987.
	
	1 to: lanes size do: 
		[ :i |
		frame := LayoutFrame new.
		frame 
			leftFraction: (i-1)/lanes size;
			topFraction: 0;
			rightFraction: i/lanes size;
			bottomFraction: 1.
		name := (lanes at: i) at: 'name'.
		column :=  SPBLane newWith: name.
		self addMorph: column fullFrame: frame.
		]

