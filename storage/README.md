# Types of Storage Services

## Elastic Block Store (EBS) - Block
Data is split into evenly split blocks
Directly accessed by the Operation System
Supports only a single write volume.
When you need a virtual hard drive attached to a VM

## AWS Elastic File Storage (EFS) - File
File is stored with data and metadata
Multiple connections via a network share
Supports multiple reads, writing locks the file.
When you need a file-share where multiple users or VMs need to access the same drive

## Amazon Simple Storage Service (S3) - Object
Object is stored with data, metadata and Unique ID
Scales with limited no file limit or storage limit
Supports multiple reads and writes (no locks)
When you just want to upload files, and not have to worry about underlying infrastructure. Not intended for high IPs

# Storage Services
- Simple Storage Service S3) is a serverless object storage service. You can upload very large files and an unlimited amount of files. You pay for what you store. You don't worry about the underlying file-system, or upgrading the disk size.
- S3 Glacier is a cold storage service. It design as a low cost storage solution for archiving and long-term backup.
It uses previous generation HDD drives to get that low cost. Its highly secure and durable.
- Elastic Block Store (EBS) is a persistent block storage service. It is a virtual hard drive in the cloud you attach to EC2 instances. You can choose different kinds of hard drives: SSD, IOPS SSD, Throughput HHD, Cold HHD
- Elastic File Storage (EFS) is a cloud-native NFS file system service. File storage you can mount to multiple EC2 instances at the same time. When you need to share files between multiple servers
- Storage Gateway is a hybrid cloud storage service that extends your on-premise storage to cloud
- File Gateway extends your local storage to AWS S3
    - Volume Gateway caches your local drives to S3 so you have a countious backup of local files in the cloud
    - Tape Gateway stores files onto virtual tapes for backing up your files on very cost effective long term storage.
- AWS Snow Family are storage devices used to physically migrate large amounts of data to the cloud.
    - Snowball and Snowball Edge are briefcase size data storage devices. 50-80 Terabytes
    - Snowmobile is a cargo container filled with racks of storage and compute that is transported via semi-trailer tractor truck to transfer up to 100PB of data per trailer.
    - Snowcone is a very small version of Snowball that can transfer 8TB of data.
- AWS Backup a fully managed backup service that makes it easy to centralize and automate the backup of data across multiple AWS services eg. EC2, EBS, RDS, DynamoDB, EFS, Storage Gateway. You create backup plans.
- CloudEndure Disaster Recovery continuously replicates your machines into a low-cost staging area in your target AWS account and preferred Region enabling fast and reliable recovery in case of IT data center failures.
- Amazon FSx is a feature rich and highly-performant file system. That can be used for Windows (SMB) or Linux (Lustre)
    - Amazon FSx for Window File Server uses the SMB protocol and allows you to mount FSx to Windows servers
    - Amazon FSx for Lustre uses Linux's Lustre file system and allows you to mount FSx to Linux servers