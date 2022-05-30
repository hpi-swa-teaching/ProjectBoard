toolbuilder
buildWith: aBuilder

	| spec |
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Project Board';
		minimumExtent: 700@400;
		children: {
			self buildScrollpaneSpecWith: aBuilder.
			self buildSidebarSpecWith: aBuilder.
			self buildSyncButton: aBuilder};
		yourself.
		
	self window: (aBuilder build: spec).
	self usedBuilder: aBuilder.
	self showLanes.
	
	"test := (aBuilder build: (self buildScrollpaneSpecWith: aBuilder)).
	aBuilder add: test to: window."
	^ self window.