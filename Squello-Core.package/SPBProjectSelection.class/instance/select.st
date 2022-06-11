as yet unclassified
select

	(self projectSelected = 0)
		ifTrue: [UserDialogBoxMorph inform: 'You did not select a project']
		ifFalse: [
			self class currentProject: self projectSelected.
			self changed: #close
		]. 