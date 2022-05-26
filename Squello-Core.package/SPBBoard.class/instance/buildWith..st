toolbuilder
buildWith: aBuilder

	| window spec |
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Project Board';
		minimumExtent: 700@400;
		children: {
			self buildScrollpaneSpecWith: aBuilder.
			self buildSidebarSpecWith: aBuilder};
		yourself.
		
	window := aBuilder build: spec.
	
	self lanes do: [:each | each pasteup: (aBuilder widgetAt: each id).
		each fetchCards.
		each board: self].
	
	self usedBuilder: aBuilder.
		
	^ window