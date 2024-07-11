cards
queryCardsfromProject: aString

	^ '[
          {
            "id": "1",
            "type": "ISSUE",
            "content": {
              "title": "card 1",
              "body": "card 1 body",
              "assignees": {
                "nodes": []
              },
              "labels": {
                "nodes": []
              },
              "closed": true,
              "id": "11"
            },
            "fieldValueByName": {
              "name": "Todo",
              "optionId": "60"
            }
          },
          {
            "id": "2",
            "type": "DRAFT_ISSUE",
            "content": {
              "title": "card 2",
              "body": "card 2 body",
              "assignees": {
                "nodes": []
              },
              "id": "12"
            },
            "fieldValueByName": {
              "name": "Done",
              "optionId": "61"
            }
          },
          {
            "id": "3",
            "type": "ISSUE",
            "content": {
              "title": "card 3",
              "body": "card 3 body",
              "assignees": {
                "nodes": []
              },
              "labels": {
                "nodes": []
              },
              "closed": false,
              "id": "13"
            },
            "fieldValueByName": {
              "name": "Todo",
              "optionId": "60"
            }
          }
        ]' parseAsJson.