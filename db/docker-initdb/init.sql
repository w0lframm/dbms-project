-- Create tables
CREATE TABLE diagnosis (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR UNIQUE NOT NULL
);
CREATE TABLE wards (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR UNIQUE NOT NULL,
                         maxcount INTEGER NOT NULL
);
CREATE TABLE people (
                         id SERIAL PRIMARY KEY,
                         firstname VARCHAR NOT NULL,
                         lastname VARCHAR NOT NULL,
                         fathername VARCHAR NOT NULL,
                         diagnosis_id INTEGER REFERENCES diagnosis (id) ON DELETE CASCADE,
                         ward_id INTEGER REFERENCES wards (id) ON DELETE CASCADE
);

-- Grant permissions to the pguser user
GRANT USAGE ON SCHEMA public TO pguser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE diagnosis TO pguser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE wards TO pguser;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE people TO pguser;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO pguser;

-- Grant permissions to the postgres user
GRANT ALL PRIVILEGES ON DATABASE testdb TO postgres;
