BEGIN;

DROP TABLE IF EXISTS users, workouts CASCADE;

CREATE TABLE users(
    user_id  SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(20) NOT NULL
);

INSERT INTO users (name, password) VALUES
    ('momen', 'momen123'),
    ('aya', '123');

CREATE TABLE workouts(
    workout_id  SERIAL PRIMARY KEY,
    user_id  integer references users(user_id) NOT NULL,
    exercise  VARCHAR(255) NOT NULL,
    workout_date date NOT NULL,
    reps  integer NOT NULL,
     duration  integer NOT NULL

);

INSERT INTO  workouts (exercise,  workout_date,reps,duration,user_id) VALUES
    ('jumping', '2023-3-3','4','30',1);

COMMIT;

