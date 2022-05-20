as yet unclassified
displayLanesOf: aNumber

	| lanes frame name column |		
	lanes := SPBGithubBoardProvider new queryColumns: aNumber.
	
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
	self addMorph: column fullFrame: frame].


