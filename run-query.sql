SELECT day_of_week(from_iso8601_timestamp(dt)) AS
day,
dt,
interfaceid,
sourceaddress,
destinationport,
action,
protocol
FROM vpc_flow_logs
WHERE action = 'REJECT' AND protocol = 6
order by sourceaddress
LIMIT 100;
