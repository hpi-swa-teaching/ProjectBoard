toolbuilder-colum
buildColumnHeaderAddCardButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (0@self endColumnHeaderTitle corner: self endAddCardButton@1);
		action: #addCard;
		label: '+ Add card';
		help: 'add a new card to the column';
		yourself.