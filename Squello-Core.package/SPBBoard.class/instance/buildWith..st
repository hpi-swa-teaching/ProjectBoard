toolbuilder
buildWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: self boardName;
		minimumExtent: 1040@400;
		children: 
			{self buildColumnAreaSpecWith: aBuilder.
			self buildSidebarSpecWith: aBuilder};
		closeAction: #saveBoard;
		yourself.
		
	^ self
		window: (aBuilder build: spec);
		window.