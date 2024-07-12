toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: self boardName;
		minimumExtent: 1040@400;
		closeAction: #saveBoard;
		children: 
			{self buildColumnAreaSpecWith: aBuilder.
			self buildSidebarSpecWith: aBuilder};
		yourself.
		
	^ self
		window: (aBuilder build: spec);
		window.