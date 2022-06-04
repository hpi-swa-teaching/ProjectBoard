as yet unclassified
generatePreamble: corePackage

	^ '
		self fileInMonticelloZipVersionNamed: ''' , corePackage , '.mcz''.
		SPBBoard registerInAppsMenu.
		self zip members do: [:aFile | self extractMemberWithoutPath: aFile inDirectory: FileDirectory default].
	'