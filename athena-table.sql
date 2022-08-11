CREATE EXTERNAL TABLE IF NOT EXISTS default (version int,
account string,
interfaceid string,
sourceaddress string,
destinationaddress string,
sourceport int,
destinationport int,
protocol int,
numpackets int,
numbytes bigint,
starttime int,
endtime int,
action strimg,
logstatus string
)
PARTITIONED BY (dt string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY' '
LOCATION 's3://{your_log_bucket}/ / {account_id}/vpcflowlogs/us-east-1/'
TBLPROPERTIES ("skip.header.line.count"="1");
