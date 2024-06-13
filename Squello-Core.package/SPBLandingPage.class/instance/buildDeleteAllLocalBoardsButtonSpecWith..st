toolbuilder-manage panel
buildDeleteAllLocalBoardsButtonSpecWith: aBuilder

	^ aBuilder build: (aBuilder pluggableButtonSpec new
		model: self;
		action: #deleteAllLocal;
		label: 'Delete All';
		yourself).
		
