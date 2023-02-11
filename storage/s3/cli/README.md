```bash
aws s3 ls
aws s3api list-buckets --output table
aws s3 cp test.txt s3://exercise-1
aws s3 cp s3://exercise-1/test.txt .
aws s3 rm s3://exercise-1/test.txt
aws s3api get-object --bucket=exercise-1 --key=test.txt testout.txt
aws s3api list-objects --bucket=exercise-1
aws s3 presign s3://exercise-1/test.txt
```