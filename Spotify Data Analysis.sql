create database spotify;

use spotify;
CREATE TABLE Urs (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);

-- Playlist table
CREATE TABLE Plst (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Urs(user_id)
);

-- Track table
CREATE TABLE Trs (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

-- PlaylistTrack table
CREATE TABLE Plt (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Plst(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Trs(track_id)
);

#INSERT VALUES IN TABLES
-- Insert values into Users table
INSERT INTO Urs (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

-- Insert values into Playlists table
INSERT INTO Plst (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

-- Insert values into Tracks table
INSERT INTO Trs (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', '÷ (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', '÷ (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  
-- Insert values into PlaylistTracks table
INSERT INTO Plt (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from urs;
select * from Plst;
select * from Trs;
select * from Plt;





#Find all the distinct album names.
select distinct album_name from trs;

# Who is the artist of song 'Never Seen the Rain'?
select track_name,artist_name from trs
where track_name = 'Never Seen the Rain';

#Name all the user & email, who have registered with gmail id.
select username,email from urs
where email like '%gmail.com';

# List the name of users along with registration dates, who have registered after April-22
select username,user_id,registration_date from urs
where registration_date > '2022-4-22';


# Extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name,artist_name,album_name,release_date from trs
where year(release_date) =2017;

#Find the details of the users who have registered in between may and august.
select * from urs
where registration_date between '2022-5-01' and '2022-8-31';

#Count the number of playlists created by each user.
select user_id, count(playlist_name) from plst
group by user_id;


#Find the track names and their durations for a specific album in the Tracks table.
select track_name,duration,album_name from trs
where album_name ='your album name';

#Calculate the average duration of tracks in the Tracks table.
select avg(duration),track_name from trs
group by track_name;

#10. How many users have registered with yahoo.com id?
select username,email from urs
where email like '%yahoo.com';

#INTERMEDIATE LEVel
#1. Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.
select plst.playlist_name,count(plt.track_id) count_tracks from plt
inner join plst
on plst.playlist_id = plt.playlist_id
left join urs
on urs.user_id = plst.user_id
where urs.email like '%gmail.com'
group by plst.playlist_name;

#Write a query to retrieve the usernames and email addresses of users who have created playlists with more 
#than 5 tracks and an average track duration greater than 200 seconds.
select urs.username,urs.email from urs
inner join plst
on urs.user_id = plst.user_id
inner join plt
on plst.playlist_id = plt.playlist_id
inner join trs
on plt.track_id = trs.track_id
group by urs.username,urs.email
having count(plt.track_id)>5 and avg(trs.duration) >200;


#3. Find the track and artist names of the tracks that have a duration 
#greater than the average duration of all tracks in the 'Tracks' table.
select track_id,track_name,artist_name from trs
where duration > (select avg(duration) from trs);

##4. Find the users who have created playlists with tracks from all albums released in a specific year.
select urs.username from urs
inner join plst
on urs.user_id = plst.user_id
inner join plt
on plst.playlist_id = plt.playlist_id
inner join trs
on plt.track_id = trs.track_id
where year(trs.release_date) = 2017
group by urs.username 
having count(distinct trs.album_name) = 
(select count(distinct trs.album_name) from trs where year(trs.release_date) = 2017);


#5. Name of playlist and their total durations, sorted by the number of tracks in descending order.
select plst.playlist_name, sum(trs.duration) total_duration  from plt
inner join plst 
on plst.playlist_id = plt.playlist_id
inner join trs 
on plt.track_id = trs.track_id
group by  plst.playlist_name
order by count(plt.track_id) desc;

##6. Find the playlists that have tracks with a duration longer than the average duration of all tracks.
select plst.playlist_name  from plt
inner join plst 
on plst.playlist_id = plt.playlist_id
inner join trs 
on plt.track_id = trs.track_id
where trs.duration > (select avg(trs.duration) from trs);


#7. Find the top 3 playlists with the most tracks.
select plst.playlist_name, count(plt.track_id) cti from plt
inner join plst
on plst.playlist_id = plt.playlist_id
group by plst.playlist_name
order by cti desc
limit 3;


#8. Calculate the average track duration for each user and display the results in descending order.
select avg(trs.duration) avg_duration, urs.username, urs.user_id from urs
inner join plst
on urs.user_id = plst.user_id
inner join plt
 on plst.playlist_id = plt.playlist_id
inner join trs
on plt.track_id = trs.track_id
group by  urs.username,urs.user_id
order by avg_duration desc;


##9. Find the track names and artist names of the tracks that are included in at least two different playlists.
select track_name, artist_name from trs
WHERE track_id IN (
SELECT track_id FROM plst
GROUP BY track_id 
HAVING COUNT(DISTINCT playlist_id) >= 2);

#10.  Find the playlist names and the total duration of each playlist,
# Include only the playlists created by users who registered in the year 2022.
select plst.playlist_name, sum(trs.duration) from trs
inner join plt
on trs.track_id = plt.track_id
inner join plst
on plt.playlist_id = plst.playlist_id
where plst.user_id in
(select user_id from urs
where year(registration_date) = 2022)
group by plst.playlist_name;


#ADVANCED LEVEL#
#1. Find the track names and artist names of the tracks that are included in playlists created by users 
#who registered before the average registration date of all users.
select trs.track_id, trs.artist_name from trs
inner join plt
on plt.track_id = trs.track_id
inner join plst
on plst.playlist_id = plt.playlist_id
inner join urs
on plst.user_id = urs.user_id
where plst.user_id in
(select urs.user_id from urs 
where 
registration_date > (select avg(registration_date) from urs));


#2. Use subquery to retrieve the names of users who have created playlists
# containing tracks from both the album 'After Hours' by The Weeknd and the
 #album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.
select username from urs
where user_id in 
(select user_id from plst
where playlist_id in 
(select playlist_id from plt 
where track_id in 
(select track_id from trs 
where track_name = 'After Hours' and artist_name = 'The Weeknd'))
 and
 playlist_id in 
(select playlist_id from plt 
where track_id in 
(select track_id from trs 
where track_name = 'After Hours' and artist_name = 'The Weeknd')));
 

#4. Find the tracks that have a duration greater than the average duration 
#of all tracks and rank them within their respective albums.
SELECT track_id,track_name,album_name,duration, 
rank() over(order by album_name) as track_rank from trs
where duration >(select avg(duration) from trs)
group by track_id,track_name,album_name
order by album_name asc;   

##5. Name the playlists along with the total number of tracks and 
#the rank of the playlist based on the number of tracks.
select plst.playlist_name,count(plt.track_id), 
rank() over(order by count(plt.track_id) desc) as playlist_rank from plt
inner join plst
on plst.playlist_id = plt.track_id
group by  plst.playlist_name;



WITH playlist_track_counts AS (
  SELECT playlist_id, COUNT(track_id) AS track_count, RANK() OVER (ORDER BY COUNT(track_id) DESC) AS playlist_rank
  FROM Plt
  GROUP BY playlist_id
)
SELECT p.playlist_id, p.playlist_name, p.user_id, p.created_at, ptc.track_count, ptc.playlist_rank
FROM Plst p
LEFT JOIN playlist_track_counts ptc ON p.playlist_id = ptc.playlist_id
ORDER BY ptc.playlist_rank;




