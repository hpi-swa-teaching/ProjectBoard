queries
getQueryColumnQuery: aString

^ '{"query":"{
  node(id: \"', aString, '\") {
    ... on ProjectV2 {
      items (first: 100)
      {
        nodes
        {
          type
          content
          {
            ... on Issue {
              title
              body
              assignees(first: 100){
                nodes{
                  id
                }
              }
              labels (first: 100){
                nodes{
                  id
                }
              }
              closed
              id
            }
            ... on DraftIssue{
              title
              body
              assignees(first: 100){
                nodes{
                  id
                }
              }
              id
            }
            ... on PullRequest{
              title
              body
              assignees (first: 100){
                nodes{
                  id
                }
              }
              labels(first: 100){
                nodes{
                  id
                }
              }
              id
              closed
            }
          }
          fieldValueByName(name: "Status")
          {
            ... on ProjectV2ItemFieldSingleSelectValue
            {
              name
              id
            }
          }
        }
      }
    }
  }
}"}'.