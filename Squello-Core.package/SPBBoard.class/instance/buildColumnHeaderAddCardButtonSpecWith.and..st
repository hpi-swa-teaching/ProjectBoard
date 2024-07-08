toolbuilder
buildColumnHeaderAddCardButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		frame: (0@0.6 corner: 0.55@1);
		model: anSPBColumn;
		action: #addCard;
		label: '+ Add card';
		help: 'add a new card to the column';
		yourself.