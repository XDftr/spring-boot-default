--changeset XDftr:create_table
CREATE TABLE example
(
    id               SERIAL PRIMARY KEY,
    name             VARCHAR(255) NOT NULL,
    CONSTRAINT uq_name UNIQUE (name)
);
