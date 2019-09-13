-- Get all restaurants
select * from restaurants;

-- Get italian restaurants
select * from restaurants where lower(cuisine) = 'italian';

-- Get 10 Italian restaurants, subset of fields
select id , name from restaurants where lower(cuisine) = 'italian' limit 10;

-- Count of Thai restaurants
select count(*) from restaurants where lower(cuisine) = 'thai';

-- Count of restaurants
select count(*) from restaurants;

-- Count of Thai restaurants in zip code
select count(*) from restaurants 
    where lower(cuisine) = 'thai'
    and address_zipcode='11372';

-- Italian restaurants in one of several zip codes
select id, name, address_zipcode from restaurants
    where lower(cuisine)='italian'
    and address_zipcode in('10012','10013','10014')
    order by name asc
    limit 5;

-- Create a restaurant
insert into restaurants
    (name, borough, cuisine, address_building_number, address_street, address_zipcode)
    values
    ('Byte Cafe', 'Brooklyn', 'coffee', '123', 'Atlantic Avenue', '11231');

-- Create a restaurant and return id and name
insert into restaurants
    (name, borough, cuisine, address_building_number, address_street, address_zipcode)
    values
    ('Shalimar Cuisine', 'Missing', 'Lebanese', '2340', 'Ann Arbor Rd', '49871');
    
select id, name from restaurants
    where lower(name)='shalimar cuisine';


-- Create three restaurants and return id and name
insert into restaurants
    (name, borough, cuisine, address_building_number, address_street, address_zipcode)
    values
    ('Restaurant 1', 'Missing', 'Italian', '123', 'Foxthorn Dr', '48184'),
    ('Restaurant 2', 'Queens', 'Indian', '340', '2nd Avenue', '11011'),
    ('Restaurant 3', 'Manhattan', 'Chinese', '440', 'Legacy Blvd', '46143');

select id, name from restaurants
    where name in ('Restaurant 1', 'Restaurant 2', 'Restaurant 3');

-- Update a record
update restaurants
    set name = 'DJ Reynolds Pub and Restaurant'
    where nyc_restaurant_id = '30191841';

-- Delete by id
delete from grades
    where id = '10';

-- A blocked Delete
delete from restaurants
    where id = '22';

-- ERROR RECEIVED:
-- 2019-09-13 13:17:24.548 EDT [9938] DETAIL:  Key (id)=(22) is still referenced from table "grades".
-- 2019-09-13 13:17:24.548 EDT [9938] STATEMENT:  delete from restaurants
	    -- where id = '22';
-- ERROR:  update or delete on table "restaurants" violates foreign key constraint "grades_restaurant_id_fkey" on table "grades"
-- DETAIL:  Key (id)=(22) is still referenced from table "grades".

-- Create a table
-- create type borough_options as enum('Bronx', 'Brooklyn', 'Manhattan', 'Queens', 'Staten Island');
create table inspectors
    (
        id integer primary key generated by default as identity,
        first_name text not null,
        last_name text not null,
        borough borough_options
    );

-- Update a table
alter table grades 
    add notes text;

-- Drop a table
drop table inspectors;