queries
getPossibleAssigneesQuery: aString

	^ '{"query":"query{
			node(id: \"', aString, '\") {
				... on ProjectV2 {
					repositories (first: 100) {
						nodes {
							assignableUsers (first: 100) {
								nodes {
									login
									id
								}
							}
						}
					}
				}
			}
		}"
	}'.