CREATE TABLE worker (id IDENTITY PRIMARY KEY, name VARCHAR(1000) NOT NULL CHECK(2<=name), birthday DATE '1900-01-01', level ENUM('Trainee', 'Junior', 'Middle', 'Senior'), salary INT NOT NULL CHECK(100<=salary and salary<=100000));
CREATE TABLE client (id IDENTY PRIMARY KEY, name VARCHAR(1000) NOT NULL CHECK(2<=name));
CREATE TABLE project (id IDENTITY PRIMARY KEY, client_id BIGINT, start_date DATE, finish_date DATE);
CREATE TABLE project_worker (project_id BIGINT, worker_id BIGINT, id BIGINT AS (project_id+worker_id) PRIMARY KEY);

ALTER TABLE project ADD CONSTRAINT client_id_fk  FOREIGN KEY (client_id) REFERENCES client(id);
ALTER TABLE project_worker ADD CONSTRAINT project_id_fk FOREIGN KEY (project_id) REFERENCES project(id);
ALTER TABLE project_worker ADD CONSTRAINT worker_id_fk FOREIGN KEY (worker_id) REFERENCES worker(id);
