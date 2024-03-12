DELETE from person 
where id in (
    select id from 
    (select id,row_number() 
                over(partition by email order by id) as rw 
                from person)A 
where rw != 1 )
