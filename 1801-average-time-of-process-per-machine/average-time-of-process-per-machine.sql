# Write your MySQL query statement below
select  a.machine_id, round(avg(a.timestamp-a2.timestamp),3) as  'processing_time' from activity a
join activity a2
on a.machine_id=a2.machine_id
and a.process_id=a2.process_id
and a.activity_type<a2.activity_type
group by a.machine_id