#!/usr/bin/env bash

set -e

export PGPASSWORD=test

# Загрузка данных в таблицу cinema.cinema
psql -U program -d cinema -c "INSERT INTO cinema (id, cinema_uid, name, address) VALUES (1, '06cc4ba3-ee97-4d29-a814-c40588290d17', 'Кинотеатр Москва', 'Ереван, улица Хачатура Абовяна, 18');"

# Загрузка данных в таблицу cinema.film_session
psql -U program -d cinema -c "INSERT INTO film_session (id, cinema_id, film_uid, date, total_seats, booked_seats) VALUES (1, 1, '049161bb-badd-4fa8-9d90-87c9a82b0668', '2024-01-01 08:00:00', 5000, 0);"

# Загрузка данных в таблицу films.film
psql -U program -d films -c "INSERT INTO film (id, film_uid, name, rating, director, producer, genre) VALUES (1, '049161bb-badd-4fa8-9d90-87c9a82b0668', 'Terminator 2 Judgment day', 8.6, 'James Cameron', 'James Cameron', 'Sci-Fi');"