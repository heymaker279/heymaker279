create table if not exists Genre(
	id serial primary key,
	genre_name text unique not null
);

create table if not exists Actors(
	id serial primary key,
	actor_name text unique not null,
	genre_id integer not null references Genre(id)
);

create table if not exists Albums(
	id serial primary key, 
	album_name text not null,
	year_ integer not null,
	actors_id integer not null references Actors(id)
);

create table if not exists Track( 
	id serial primary key, 
	track_name text not null,
	track_time numeric(2,2) not null,
	album_id integer not null references Albums(id)
);
