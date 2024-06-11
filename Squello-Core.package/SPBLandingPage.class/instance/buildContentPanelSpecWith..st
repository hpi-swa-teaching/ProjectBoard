toolbuilder
buildContentPanelSpecWith: aBuilder

	self usedBuilder: aBuilder.
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #vertical;
		children: #contentPanelChildren;
		yourself.