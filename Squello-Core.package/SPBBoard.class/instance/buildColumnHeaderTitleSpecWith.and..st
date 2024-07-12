toolbuilder-colum
buildColumnHeaderTitleSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableTextSpec new
		model: anSPBColumn;
		frame: (0@0 corner: 1@self endColumnHeaderTitle);
		getText: #title;
		setText: #updateTitle:;
		yourself.