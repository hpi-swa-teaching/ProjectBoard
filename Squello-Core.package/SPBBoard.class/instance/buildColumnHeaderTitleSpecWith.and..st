toolbuilder-colum
buildColumnHeaderTitleSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableTextSpec new
		model: anSPBColumn;
		frame: (0@0 corner: 1@0.6);
		getText: #title;
		setText: #updateTitle:;
		yourself.