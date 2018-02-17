-- All tables must have a PRIMARY KEY on the id

-- Series have a title and belong to an author and a sub-genre
CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);

-- A Sub-Genre has a name
CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name TEXT
);

-- Authors have a name
CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

-- Books have a title and year and belong to a series
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER
);

-- Characters have a name, motto, and species and belong to an author and a series
CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id INTEGER,
  series_id INTEGER
);


-- Books have many characters and characters are in many books in a series.
-- Create this complex association with a join table between Characters and Books.
-- This join table will just have two foreign key columns for the character and book ids (in addition to its primary key).
-- Each row in this join table acts as a relation between a book and a character.
CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER
);
