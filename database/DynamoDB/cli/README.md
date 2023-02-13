```bash
aws dynamodb list-tables
aws dynamodb describe-table --table-name=exercise-8
aws dynamodb put-item --table-name=exercise-8 --item '{"Email": {"S": "test@test.local"}, "CreatedBy": {"S": "Mahdi"}, "key1": {"S": "value1"}, "key2": {"S": "value2"}}'
aws dynamodb get-item --table-name=exercise-8 --key '{"Email": {"S": "test@test.local"}, "CreatedBy": {"S": "Mahdi"}}'
```