aws mb s3://unencrypt-bucket --region ap-south-1

aws iam create-policy --policy-name unencryptedDataUploadPolicy --policy-document file://unencryptedDataUploadPolicy.json

aws s3api put-object --bucket unencypt-bucket --key "$filename" --body "$filename"