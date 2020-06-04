-- Generate the script to drop Azure Sync Group tables
select 'drop table ['+ ss.name+ '].['+ st.name+ '];' from sys.tables as st join sys.schemas as ss on ss.schema_id = st.schema_id 
where st.schema_id IN( select schema_id from sys.schemas where name IN ('dss', 'TaskHosting') )

-- Generate the script to drop Azure Sync Group procedures
select 'drop procedure ['+ ss.name+ '].['+ sp.name+ '];' from sys.procedures as sp join sys.schemas as ss 
on ss.schema_id = sp.schema_id 
where ss.schema_id IN( select schema_id from sys.schemas where name IN ('dss', 'TaskHosting') )

-- Generate the script to delete Azure Sync Group types
select 'drop type  ['+ ss.name+ '].['+ st.name+ '];' from sys.types as st join sys.schemas as ss on st.schema_id = ss.schema_id 
where st.schema_id IN( select schema_id from sys.schemas where name IN ('dss', 'TaskHosting') )


