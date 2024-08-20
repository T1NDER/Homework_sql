INSERT INTO Artist (artist_id, artist_name) VALUES
    (1, 'Slava Marlow'),
    (2, 'Seventy Seven'),
    (3, 'Miyagi & Endgame'),
    (4, 'MORENSHTERN');

INSERT INTO Genre (genre_id, genre_name) VALUES
    (1, 'rap'),
    (2, 'pop'),
    (3, 'electronics');

INSERT INTO Album (album_id, album_name, album_year) VALUES
    (1, 'Slawa Marlow', 2023),
    (2, '77', 2023),
    (3, 'Millionaire', 2023);

INSERT INTO Compilation (compilation_id, compilation_name, compilation_year) VALUES
    (1, 'The best tracks of Russian rap', 2022),
    (2, 'Popular music of Russia', 2023),
    (3, 'Music for parties', 2023),
    (4, 'Alternative music of Russia', 2022);

INSERT INTO Track (track_id, track_name, track_duration, album_id) VALUES
    (1, 'Ты горишь как агония', 139, 1),
    (2, 'Снова я напиваюсь', 117, 1),
    (3, 'I Miss You', 244, 2),
    (4, 'Let me', 275, 2),
    (5, 'Круговорот', 159, 3),
    (6, 'Cadillac', 177, 3);

INSERT INTO Artist_Genre (artist_id, genre_id) VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1);

INSERT INTO Album_Artist (album_id, artist_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO Compilation_Track (compilation_id, track_id) VALUES
    (1, 1),
    (1, 3),
    (2, 2),
    (2, 4),
    (3, 1),
    (3, 5),
    (4, 3),
    (4, 6);