/**********************************************************************
 * NAME: Noemi Turner
 * CLASS: CPSC 321
 * DATE: Fall 2022
 * DESCRIPTION: Project schema and adding data to tables
 **********************************************************************/

-- ********* Drop table statements  **************
DROP TABLE IF EXISTS guestAppearence;
DROP TABLE IF EXISTS subscriber;
DROP TABLE IF EXISTS listener;
DROP TABLE IF EXISTS episode;
DROP TABLE IF EXISTS guest;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS hosted;
DROP TABLE IF EXISTS podcast;
DROP TABLE IF EXISTS host;

-- ********* Create table statements **************

-- host(host_id, first_name, last_name, bio)
CREATE TABLE host (
    host_id CHAR(5), -- Ex: H-101
    first_name VARCHAR(75) NOT NULL, 
    last_name VARCHAR(75) NOT NULL, 
    bio TEXT NOT NULL, 
    PRIMARY KEY (host_id)
);

-- podcast(podcast_id, title, p_description)
CREATE TABLE podcast (
    podcast_id CHAR(5), -- P-007
    title VARCHAR(100) UNIQUE NOT NULL, -- all of the titles are unique
    p_description TINYTEXT NOT NULL,
    PRIMARY KEY (podcast_id) 
);

-- hosted(podcast_id, host_id)
CREATE TABLE hosted (
    podcast_id CHAR(5), -- P-007
    host_id CHAR(5), -- Ex: H-101
    PRIMARY KEY (podcast_id, host_id),
    FOREIGN KEY (podcast_id) REFERENCES podcast (podcast_id),
    FOREIGN KEY (host_id) REFERENCES host (host_id)
);


-- member(member_id, first_name, last_name, zip_code, email)
CREATE TABLE member (
    member_id CHAR(5), -- Ex: M-102 
    first_name VARCHAR(75) NOT NULL, 
    last_name VARCHAR(75) NOT NULL, 
    zip_code INT UNSIGNED NOT NULL, -- Ex: 99122 
    email VARCHAR(255) NOT NULL, -- In the future, I would want to save in a better way possibly  
    PRIMARY KEY (member_id), 
    UNIQUE (email)
);

-- guest(guest_id, first_name, last_name)
CREATE TABLE guest (
    guest_id CHAR(5), -- Ex: G-101
    first_name VARCHAR(75) NOT NULL, 
    last_name VARCHAR(75), -- Can be NULL if the guest has a stage name that's one name (i.e. Cher, Bono, etc.)
    PRIMARY KEY (guest_id)
);

-- episode(episode_id, podcast_id, title, e_description, release_date, runtime, audio_file_name)
CREATE TABLE episode (
    episode_id INT UNSIGNED AUTO_INCREMENT,  -- surrogate key
    podcast_id CHAR(5) NOT NULL, -- P-007
    title VARCHAR(255) NOT NULL, -- I used VARCHAR(255) since podcast titles can be pretty long sometimes (also each title is unique)
    e_description TEXT NOT NULL, -- description of the podcast
    release_date DATE NOT NULL,  -- YYYY-MM-DD
    runtime TIME NOT NULL, -- hh:mm:ss
    audio_file_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (episode_id),
    FOREIGN KEY (podcast_id) REFERENCES podcast (podcast_id), 
    UNIQUE (title),
    UNIQUE (audio_file_name)
);

-- listener(episode_id, member_id, total_num_plays)
CREATE TABLE listener (
    episode_id INT UNSIGNED,  
    member_id CHAR(5), -- Ex: M-102
    total_num_plays INT UNSIGNED NOT NULL, -- when they click on the play button, this value will be updated
    PRIMARY KEY (episode_id, member_id),
    FOREIGN KEY (episode_id) REFERENCES episode (episode_id),
    FOREIGN KEY (member_id) REFERENCES member (member_id)
);

-- subscriber(member_id, podcast_id)
CREATE TABLE subscriber (
    member_id CHAR(5), -- Ex: M-703
    podcast_id CHAR(5), -- P-007
    PRIMARY KEY(member_id, podcast_id),
    FOREIGN KEY (member_id) REFERENCES member (member_id),
    FOREIGN KEY (podcast_id) REFERENCES podcast (podcast_id)
);

-- guestAppearence(guest_id, episode_id)
CREATE TABLE guestAppearence (
    guest_id CHAR(5), -- Ex: G-101
    episode_id INT UNSIGNED,  -- Ex: 500000 
    PRIMARY KEY (guest_id, episode_id),
    FOREIGN KEY (guest_id) REFERENCES guest (guest_id),
    FOREIGN KEY (episode_id) REFERENCES episode (episode_id)
);