toolbuilder
buildAddColumnButtonPanelSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			minimumExtent: (300@200);
			children: {self buildAddColumnButtonSpecWith: aBuilder};
			yourself.