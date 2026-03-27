CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE tracks (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title VARCHAR(255) NOT NULL,
    source_type VARCHAR(50) NOT NULL,
    source_url TEXT NOT NULL,
    thumbnail TEXT,
    watched BOOLEAN NOT NULL DEFAULT FALSE,
    progress INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    order_index INTEGER NOT NULL
);
