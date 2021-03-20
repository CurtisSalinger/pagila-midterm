/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */

CREATE TABLE project (
    updated_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ,
    author_id BIGINT NOT NULL
    project_id INTEGER NOT NULL UNIQUE,
    target_id INTEGER NOT NULL,
    id SERIAL PRIMARY KEY,
    action SMALLINT NOT NULL,
    data TEXT,
    title VARCHAR(256),
    target_type VARCHAR(2) NOT NULL,
);


   attname   |   typname   | typalign | typlen
-------------+-------------+----------+--------
 updated_at  | timestamptz | d        |      8
 created_at  | timestamptz | d        |      8
 author_id   | int8        | d        |      8
 project_id  | int4        | i        |      4
 target_id   | int4        | i        |      4
 id          | int4        | i        |      4
 action      | int2        | s        |      2
 data        | text        | i        |     -1
 title       | varchar     | i        |     -1
 target_type | varchar     | i        |     -1

