queries
getPossibleLabelsQuery: aString

^ '{"query":"query{
		node(id: \"', aString, '\") {
			... on ProjectV2 {
				repositories (first: 100) {
					nodes {
						labels (first: 100) {
							nodes {
								id
								name
								color
							}
						}
					}
				}
			}
		}
	}"}'.