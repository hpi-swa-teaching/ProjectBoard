toolbuilder-colum
buildColumnHeaderMoveColumnLeftButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (self endAddCardButton@self endColumnHeaderTitle corner: self endMoveLeftButton@1);
		action: #swapLeft;
		label: '<-';
		help: 'move the column left';
		yourself.