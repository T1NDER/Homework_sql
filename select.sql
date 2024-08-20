# Название и продолжительность самого длительного трека

SELECT track_name, track_duration 
FROM Track
WHERE track_name = (SELECT MAX(track_name) FROM Track)
AND track_duration = (SELECT MAX(track_duration) FROM Track);

#Название треков, продолжительность которых не менее 3,5 минут

SELECT track_name, track_duration
FROM Track
WHERE track_duration > 210;

# Названия сборников, вышедших в период с 2018 по 2020 год включительно

SELECT compilation_name, compilation_year
FROM Compilation
WHERE compilation_year BETWEEN 2018 AND 2020;

# Исполнители, чьё имя состоит из одного слова

SELECT artist_name
FROM Artist
WHERE album_name NOT LIKE '% %';

# Название треков, которые содержат слово «мой» или «my»

SELECT track_name
FROM Track
WHERE track_name LIKE '%мой%' OR track_name LIKE '%my%';

# Количество исполнителей в каждом жанре

SELECT g.genre_name, COUNT(a.artist_name) AS artist_count
FROM Genre g
JOIN Artist_Genre ag ON ag.artist_id = a.artist_id
JOIN Artist a ON ag.artist_id = a.artist_id
GROUP BY g.genre_name
ORDER BY artist_count DESC;

# Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT COUNT(t.track_id) AS track_count
FROM Track t
JOIN Album a ON t.album_id = a.album_id
WHERE a.album_year BETWEEN 2019 AND 2020;

# Средняя продолжительность треков по каждому альбому

SELECT a.album_name, AVG(t.track_duration) AS average_duration
FROM Album a
JOIN Track t ON a.album_id = t.album_id
GROUP BY a.album_name
ORDER BY a.album_name;

# Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT DISTINCT a.artist_name
FROM Artist a
LEFT JOIN Album al ON a.artist_id = al.artist_id
WHERE al.album_year IS NULL OR al.album_year != 2020;

# Названия сборников, в которых присутствует конкретный исполнитель

SELECT DISTINCT c.compilation_name
FROM Compilation c
JOIN Compilation_Track ct ON c.compilation_id = ct.compilation_id
JOIN Track t ON ct.track_id = t.track_id
JOIN Album a ON t.album_id = a.album_id
JOIN Artist_Album aa ON a.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.artist_id
WHERE ar.artist_name = 'Slava Marlow';

 