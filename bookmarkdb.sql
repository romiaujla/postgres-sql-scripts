-- Remove any existing tables by the bookmark name
drop table if exists bookmarks_table;

-- Create the table next
create table if not exists bookmarks_table
    (
        id integer primary key generated by default as identity,
        title text not null,
        url text not null unique,
        description text default '',
        rating numeric not null constraint rating_limit check (rating >= 0 and rating <= 5)
    );

insert into bookmarks_table
    (title, url, description, rating)
    values
    ('Thinkful', 'https://www.thinkful.com', 'Think outside the classroom', 5),
    ('Google', 'https://www.google.com', 'Where we can find everything', 4),
    ('Cricinfo', 'https://www.espncricinfo.com', 'A place to find cricket stats', 5),
    ('MDN', 'https://developer.mozilla.org', 'The only place to find web documentation', 5),
    ('Raman Aujla', 'https://www.raujla.com', 'Full Stack Developers Portfolio', 2.3),
    ('Github', 'https://www.github.com', 'Place to put all your good codes', 4),
    ('Unsplash', 'https://www.unsplash.com', 'Find Cool pictures for your website', 5),
    ('dribbble', 'https://www.dribbble.com', 'Find cool UI/UX ideas', 3.8),
    ('instagram', 'https://www.instagram.com', 'Social media app', 2.0),
    ('youtube', 'https://www.youtube.com', 'Find any kind of videos', 4.1);

select * from bookmarks_table;