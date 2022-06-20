toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Squello Project Board';
		minimumExtent: 700@400;
		children: {
			self buildLaneAreaSpecWith: aBuilder.
			self buildSidebarSpecWith: aBuilder};
		yourself.
		
	self window: (aBuilder build: spec).

	self updateLanes.
	
	^ self window.