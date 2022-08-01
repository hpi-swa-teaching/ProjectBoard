toolbuilder
buildColumnHeaderTitleSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableTextSpec new
		frame: (0@0 corner: 1@0.6);
		model: anSPBColumn;
		getText: #title;
		setText: #updateTitle:;
		yourself.