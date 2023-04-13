/**********************************************************************
 * NAME: Noemi Turner
 * CLASS: CPSC 321
 * DATE: Fall 2022
 * DESCRIPTION: Populates the tables with data
 **********************************************************************/

-- ********** Insert statements *******************
-- host(host_id, first_name, last_name, bio)
INSERT INTO host VALUES ("H-001", "Conan", "O'Brien", "Conan O'Brien was born in Brookline, 
                                                     Massachusetts and started his path in comedy 
                                                     when he served twice as the president of The 
                                                     Harvard Lampoon. Conan went on to become a 
                                                     writer and producer on several television 
                                                     shows, including \'Saturday Night Live\' and \'The Simpsons,\'
                                                     until 1993, when NBC tapped him to take over as host of \'Late Night.\'");

INSERT INTO host VALUES ("H-002", "Matt", "Gourley", "Matt Gourley does some podcasts. (Too many for the database admin to write in this bio)");

INSERT INTO host VALUES ("H-003", "Rob", "Lowe", "Rob Lowe is literally the coolest.");

INSERT INTO host VALUES ("H-004", "Alan", "Yang", "Alan was a writer on Parks and Recreation. He also likes running and cooking when he isn't hosting the podcast");

INSERT INTO host VALUES ("H-005", "Andy", "Richter", "Andy Richter has made a home for himself in the hearts of comedy fans all across the country.");

INSERT INTO host VALUES ("H-006", "Jessie", "Gaskell", "Jessie Gaskell is a comedy writer and performer who wrote for \'Conan\' for 7 years. \'Conan\' is in 
                                                        quotes because she's still not sure he exists. Jessie loves
                                                        to travel and has an exciting passport thanks to her work on \'Conan Without Borders.\'");

INSERT INTO host VALUES ("H-007", "Mike", "Sweeney", "During his 26-year career in late night television, Mike has written for such varied programs as 
                                                      \'Late Night with Conan O’Brien,\' \'The Tonight Show with
                                                      Conan O’Brien,\' and \'CONAN.\'" );

INSERT INTO host VALUES ("H-008", "Sona", "Movsesian", "Sona Movsesian started her career in TV as an NBC Page and went on to become the Events & Operations 
                                                        Coordinator for the publicity department. She started working for Conan O'Brien as his executive assistant 
                                                        in 2009. She was born in Los Angeles and continues to live there with her husband Tak, 
                                                        their puppy Oki, and twins Mikey and Charlie.");


-- podcast(podcast_id, title, p_description, genre)
INSERT INTO podcast VALUES ("P-101", "Conan O'Brien Needs a Friend", "Conan searches for friends while interviewing celebrity guests");
INSERT INTO podcast VALUES ("P-102", "The Three Questions", "Host Andy Richter asks the same three questions to each guest: Where do you come from? Where are you going? What have you learned?");
INSERT INTO podcast VALUES ("P-103", "Literally! With Rob Lowe", "This is literally a podcast where people I love, admire, and know well will be in a safe space to really let their hair down");
INSERT INTO podcast VALUES ("P-104", "Inside Conan", "CONAN writers Mike Sweeney and Jessie Gaskell will guide listeners through 28 years of late night memories, starting from the very beginning. They’ll speak with some of Conan’s most iconic guests, writers, and the man himself.");
INSERT INTO podcast VALUES ("P-105", "Parks and Recollection", "Parks and Recreation’s Rob Lowe (actor/NFL fan) and Alan Yang (writer/director/Mouse Rat bassist) host the definitive podcast about the making of the beloved comedy series.");
-- This podcast doesn't have a host, because it's a story telling podcast with different people involved in making each episode
-- Also since it's just been added to TEAM COCO, it doesn't have any episodes yet
INSERT INTO podcast VALUES ("P-106", "Significant Others", "A history podcast narrated & written by Liza Powel O’Brien and featuring the voices of: Megan Mullally, Nick Offerman, Jameela Jamil, Rita Wilson, Timothy Olyphant, Lisa Kudrow and many more.");

-- hosted(podcast_id, host_id)
-- Conan O'Brien Needs a Friend
INSERT INTO hosted VALUES ("P-101", "H-001");
INSERT INTO hosted VALUES ("P-101", "H-002");
INSERT INTO hosted VALUES ("P-101", "H-008");
-- Three Questions
INSERT INTO hosted VALUES ("P-102", "H-005");
-- Literally
INSERT INTO hosted VALUES ("P-103", "H-003");
-- Inside Conan
INSERT INTO hosted VALUES ("P-104", "H-006");
INSERT INTO hosted VALUES ("P-104", "H-007");
-- Parks and Recollection
INSERT INTO hosted VALUES ("P-105", "H-003");
INSERT INTO hosted VALUES ("P-105", "H-004");


-- member(member_id, first_name, last_name, zip_code, email)
INSERT INTO member VALUES ("M-101", "Noemi", "Turner", 99037, "noemi@zagmail.com");
INSERT INTO member VALUES ("M-102", "Addie", "Turner", 90210, "addie@zagmail.com");
INSERT INTO member VALUES ("M-103", "Moira", "Rose", 99037, "moira@zagmail.com");
INSERT INTO member VALUES ("M-104", "David", "Rose", 99027, "david@gmail.com");
INSERT INTO member VALUES ("M-105", "Alexis", "Rose", 90210, "alexis@zagmail.com");
INSERT INTO member VALUES ("M-106", "Johnny", "Rose", 90210, "johnny@gmail.com");
INSERT INTO member VALUES ("M-107", "Will", "Arnett", 91001, "will@gmail.com");
INSERT INTO member VALUES ("M-108", "Rashida", "Jones", 91001, "rashida@gmail.com");
INSERT INTO member VALUES ("M-109", "Nick", "Offerman", 91001, "offerman@gmail.com");
INSERT INTO member VALUES ("M-110", "Catherine", "O'Hara", 99122, "catherine@zagmail.com");
INSERT INTO member VALUES ("M-111", "Eugene", "Levy", 99122, "eugene@zagmail.com");
INSERT INTO member VALUES ("M-112", "Dan", "Levy", 99122, "dan@zagmail.com");
INSERT INTO member VALUES ("M-113", "Adam", "Scott", 99206, "adam@zagmail.com");
INSERT INTO member VALUES ("M-114", "Aubrey", "Plaza", 99206, "plaza@zagmail.com");
INSERT INTO member VALUES ("M-115", "Rachel", "Dratch", 99206, "rachel@zagmail.com");
INSERT INTO member VALUES ("M-116", "Adam", "Scott", 99206, "adamScott@zagmail.com");
INSERT INTO member VALUES ("M-117", "Nick", "Kroll", 99037, "kroll@zagmail.com");
INSERT INTO member VALUES ("M-118", "Jerry", "Seinfeld", 99206, "seinfeld@zagmail.com");
INSERT INTO member VALUES ("M-119", "Miranda", "Sings", 99037, "mirandaSings@zagmail.com");
INSERT INTO member VALUES ("M-120", "Miranda", "Hart", 99037, "miranda@zagmail.com");
INSERT INTO member VALUES ("M-121", "Amy", "Schumer", 99037, "amy@zagmail.com");
INSERT INTO member VALUES ("M-122", "Mindy", "Kaling", 91001, "mindy@gmail.com");
INSERT INTO member VALUES ("M-123", "Seth", "Meyers", 99122, "seth@gmail.com");
INSERT INTO member VALUES ("M-124", "Quincy", "Jones", 99122, "jones@gmail.com");
INSERT INTO member VALUES ("M-125", "Ellie", "Kemper", 99122, "kemper@gmail.com");
INSERT INTO member VALUES ("M-126", "Jim", "Parsons", 99122, "jim@gmail.com");
INSERT INTO member VALUES ("M-127", "Kaley", "Cuoco", 91001, "cuoco@gmail.com");
INSERT INTO member VALUES ("M-128", "Johnny", "Galecki", 99122, "galecki@gmail.com");
INSERT INTO member VALUES ("M-129", "Simon", "Helberg", 99206, "helberg@gmail.com");
INSERT INTO member VALUES ("M-130", "Mayim", "Bialik", 99206, "mayim@zaggmail.com");
INSERT INTO member VALUES ("M-131", "Kunal", "Nayyar", 99206, "kunal@gmail.com");
INSERT INTO member VALUES ("M-132", "Melissa", "Rauch", 99206, "rauch@gmail.com");
INSERT INTO member VALUES ("M-133", "Elyes", "Gabel", 99206, "elyesg@gmail.com");
INSERT INTO member VALUES ("M-134", "Tracy", "Morgan", 99206, "tracy@gmail.com");
INSERT INTO member VALUES ("M-135", "J.B.", "Smoove", 90210, "smoove@gmail.com");
INSERT INTO member VALUES ("M-136", "Gwen", "Stefani", 91001, "gwen@zagmail.com");
INSERT INTO member VALUES ("M-137", "Kristen", "Schaal", 91001, "schaal@zagmail.com");
INSERT INTO member VALUES ("M-138", "T", "Murph", 91001, "t.murph@zagmail.com");
INSERT INTO member VALUES ("M-139", "Titus", "Andromedon", 91001, "titus@zagmail.com");
INSERT INTO member VALUES ("M-140", "Kimmy", "Schmidt", 99122, "kimmy@zagmail.com");
INSERT INTO member VALUES ("M-141", "Indiana", "Jones", 96712, "indiana@zagmail.com");
INSERT INTO member VALUES ("M-142", "Allison", "Janney", 96712, "allison@zagmail.com");
INSERT INTO member VALUES ("M-143", "Jack", "McBrayer", 96712, "jack@zagmail.com");
INSERT INTO member VALUES ("M-144", "Leslie", "Jones", 96712, "leslie@zagmail.com");
INSERT INTO member VALUES ("M-145", "B.J", "Novak", 96712, "novak@zagmail.com");
INSERT INTO member VALUES ("M-146", "Amy", "Sedaris", 96712, "sedaris@zagmail.com");
INSERT INTO member VALUES ("M-147", "Amy", "Sedaris", 96712, "sedaris.amy@gmail.com");
INSERT INTO member VALUES ("M-148", "Jeff", "Goldblum", 99027, "gold@zagmail.com");
INSERT INTO member VALUES ("M-149", "Moly", "Shannon", 99027, "molly@gmail.com");
INSERT INTO member VALUES ("M-150", "Julie", "Bowen", 98004, "julie@gmail.com");
INSERT INTO member VALUES ("M-151", "Kumail", "Nanjiani", 98004, "kumail@gmail.com");
INSERT INTO member VALUES ("M-152", "George", "Clooney", 98004, "clooney@gmail.com");
INSERT INTO member VALUES ("M-153", "Elizabeth", "Bennet", 98004, "elizabeth@gmail.com");
INSERT INTO member VALUES ("M-154", "Caterina", "Valdo", 90210, "cat@gmail.com");
INSERT INTO member VALUES ("M-155", "Dani Jo", "Meeks", 98004, "dani@gmail.com");
INSERT INTO member VALUES ("M-156", "Trinity", "Turner", 98004, "trinity@gmail.com");
INSERT INTO member VALUES ("M-157", "Marena", "Stewart", 99027, "marena@gmail.com");
INSERT INTO member VALUES ("M-158", "Katrina", "Nicolayeff", 98004, "katrina@gmail.com");
INSERT INTO member VALUES ("M-159", "Ashley", "Dreyer", 98004, "ashley@gmail.com");
INSERT INTO member VALUES ("M-160", "Katie", "Turner", 98004, "katie@gmail.com");

-- subscriber(member_id, podcast_id)
-- Conan O'Brien Needs a Friend
INSERT INTO subscriber VALUES ("M-101", "P-101");
INSERT INTO subscriber VALUES ("M-102", "P-101");
INSERT INTO subscriber VALUES ("M-103", "P-101");
INSERT INTO subscriber VALUES ("M-104", "P-101");
INSERT INTO subscriber VALUES ("M-105", "P-101");
INSERT INTO subscriber VALUES ("M-106", "P-101");
INSERT INTO subscriber VALUES ("M-107", "P-101");
INSERT INTO subscriber VALUES ("M-108", "P-101");
INSERT INTO subscriber VALUES ("M-109", "P-101");
INSERT INTO subscriber VALUES ("M-110", "P-101");
INSERT INTO subscriber VALUES ("M-111", "P-101");
INSERT INTO subscriber VALUES ("M-112", "P-101");
INSERT INTO subscriber VALUES ("M-113", "P-101");
INSERT INTO subscriber VALUES ("M-114", "P-101");
INSERT INTO subscriber VALUES ("M-115", "P-101");
INSERT INTO subscriber VALUES ("M-125", "P-101");
INSERT INTO subscriber VALUES ("M-126", "P-101");
INSERT INTO subscriber VALUES ("M-127", "P-101");
INSERT INTO subscriber VALUES ("M-128", "P-101");
INSERT INTO subscriber VALUES ("M-129", "P-101");
INSERT INTO subscriber VALUES ("M-150", "P-101");
INSERT INTO subscriber VALUES ("M-151", "P-101");
INSERT INTO subscriber VALUES ("M-152", "P-101");
INSERT INTO subscriber VALUES ("M-153", "P-101");
INSERT INTO subscriber VALUES ("M-154", "P-101");
INSERT INTO subscriber VALUES ("M-156", "P-101");
INSERT INTO subscriber VALUES ("M-157", "P-101");
INSERT INTO subscriber VALUES ("M-158", "P-101");
INSERT INTO subscriber VALUES ("M-160", "P-101");

-- Three Questions
INSERT INTO subscriber VALUES ("M-101", "P-102");
INSERT INTO subscriber VALUES ("M-102", "P-102");
INSERT INTO subscriber VALUES ("M-103", "P-102");
INSERT INTO subscriber VALUES ("M-104", "P-102");
INSERT INTO subscriber VALUES ("M-105", "P-102");
INSERT INTO subscriber VALUES ("M-106", "P-102");
INSERT INTO subscriber VALUES ("M-107", "P-102");
INSERT INTO subscriber VALUES ("M-108", "P-102");
INSERT INTO subscriber VALUES ("M-109", "P-102");
INSERT INTO subscriber VALUES ("M-110", "P-102");
INSERT INTO subscriber VALUES ("M-125", "P-102");
INSERT INTO subscriber VALUES ("M-126", "P-102");
INSERT INTO subscriber VALUES ("M-127", "P-102");
INSERT INTO subscriber VALUES ("M-128", "P-102");
INSERT INTO subscriber VALUES ("M-129", "P-102");
INSERT INTO subscriber VALUES ("M-130", "P-102");
INSERT INTO subscriber VALUES ("M-131", "P-102");
INSERT INTO subscriber VALUES ("M-132", "P-102");
INSERT INTO subscriber VALUES ("M-133", "P-102");
INSERT INTO subscriber VALUES ("M-134", "P-102");
INSERT INTO subscriber VALUES ("M-135", "P-102");

-- Literally
INSERT INTO subscriber VALUES ("M-105", "P-103");
INSERT INTO subscriber VALUES ("M-106", "P-103");
INSERT INTO subscriber VALUES ("M-107", "P-103");
INSERT INTO subscriber VALUES ("M-108", "P-103");
INSERT INTO subscriber VALUES ("M-109", "P-103");
INSERT INTO subscriber VALUES ("M-110", "P-103");
INSERT INTO subscriber VALUES ("M-111", "P-103");
INSERT INTO subscriber VALUES ("M-112", "P-103");
INSERT INTO subscriber VALUES ("M-113", "P-103");
INSERT INTO subscriber VALUES ("M-114", "P-103");
INSERT INTO subscriber VALUES ("M-115", "P-103");
INSERT INTO subscriber VALUES ("M-116", "P-103");
INSERT INTO subscriber VALUES ("M-117", "P-103");
INSERT INTO subscriber VALUES ("M-118", "P-103");
INSERT INTO subscriber VALUES ("M-119", "P-103");
INSERT INTO subscriber VALUES ("M-120", "P-103");
INSERT INTO subscriber VALUES ("M-140", "P-103");

-- Inside Conan
INSERT INTO subscriber VALUES ("M-101", "P-104");
INSERT INTO subscriber VALUES ("M-102", "P-104");
INSERT INTO subscriber VALUES ("M-103", "P-104");
INSERT INTO subscriber VALUES ("M-104", "P-104");
INSERT INTO subscriber VALUES ("M-105", "P-104");
INSERT INTO subscriber VALUES ("M-106", "P-104");
INSERT INTO subscriber VALUES ("M-107", "P-104");
INSERT INTO subscriber VALUES ("M-108", "P-104");
INSERT INTO subscriber VALUES ("M-109", "P-104");
INSERT INTO subscriber VALUES ("M-110", "P-104");
INSERT INTO subscriber VALUES ("M-121", "P-104");
INSERT INTO subscriber VALUES ("M-122", "P-104");
INSERT INTO subscriber VALUES ("M-123", "P-104");
INSERT INTO subscriber VALUES ("M-124", "P-104");
INSERT INTO subscriber VALUES ("M-125", "P-104");
INSERT INTO subscriber VALUES ("M-150", "P-104");
INSERT INTO subscriber VALUES ("M-151", "P-104");
INSERT INTO subscriber VALUES ("M-152", "P-104");
INSERT INTO subscriber VALUES ("M-153", "P-104");
INSERT INTO subscriber VALUES ("M-154", "P-104");
INSERT INTO subscriber VALUES ("M-156", "P-104");
INSERT INTO subscriber VALUES ("M-157", "P-104");
INSERT INTO subscriber VALUES ("M-158", "P-104");
INSERT INTO subscriber VALUES ("M-159", "P-104");
INSERT INTO subscriber VALUES ("M-160", "P-104");

-- Parks and Recollection
INSERT INTO subscriber VALUES ("M-101", "P-105");
INSERT INTO subscriber VALUES ("M-102", "P-105");
INSERT INTO subscriber VALUES ("M-103", "P-105");
INSERT INTO subscriber VALUES ("M-104", "P-105");
INSERT INTO subscriber VALUES ("M-105", "P-105");
INSERT INTO subscriber VALUES ("M-106", "P-105");
INSERT INTO subscriber VALUES ("M-107", "P-105");
INSERT INTO subscriber VALUES ("M-108", "P-105");
INSERT INTO subscriber VALUES ("M-109", "P-105");
INSERT INTO subscriber VALUES ("M-110", "P-105");
INSERT INTO subscriber VALUES ("M-111", "P-105");
INSERT INTO subscriber VALUES ("M-112", "P-105");
INSERT INTO subscriber VALUES ("M-113", "P-105");
INSERT INTO subscriber VALUES ("M-114", "P-105");
INSERT INTO subscriber VALUES ("M-115", "P-105");
INSERT INTO subscriber VALUES ("M-116", "P-105");
INSERT INTO subscriber VALUES ("M-117", "P-105");
INSERT INTO subscriber VALUES ("M-118", "P-105");
INSERT INTO subscriber VALUES ("M-119", "P-105");
INSERT INTO subscriber VALUES ("M-140", "P-105");

-- guest(guest_id, first_name, last_name)
INSERT INTO guest VALUES ("G-120", "Lisa", "Simpson");
INSERT INTO guest VALUES ("G-121", "Amy", "Poehler");
INSERT INTO guest VALUES ("G-122", "Maya", "Rudolph");
INSERT INTO guest VALUES ("G-123", "Marshawn", "Lynch");
INSERT INTO guest VALUES ("G-124", "Judy", "Greer");
INSERT INTO guest VALUES ("G-125", "John", "Lithgow");
INSERT INTO guest VALUES ("G-126", "Tiffany", "Haddish");
INSERT INTO guest VALUES ("G-127", "Elle", "Woods");
INSERT INTO guest VALUES ("G-128", "Shaquille", "O'Neal");
INSERT INTO guest VALUES ("G-129", "Awkwafina", NULL);
INSERT INTO guest VALUES ("G-130", "Tracee", "Ellis Ross");

-- episode(episode_id, podcast_id, title, e_description, release_date, runtime, audio_file_name)
--  Conan O'Brien Needs a Friend
INSERT INTO episode VALUES (1, "P-101", "Episode 1: First Episode", "In this episode, we introduce the podcast", "2022-01-15", "00:59:10", "p101e1.mp3");
INSERT INTO episode VALUES (2, "P-101", "Episode 2: Topic 1", "In this episode, we discuss topic 1", "2022-01-20", "01:00:25", "p101e2.mp3");
INSERT INTO episode VALUES (3, "P-101", "Episode 3: Topic 2", "In this episode, we discuss topic 2", "2022-01-23", "01:03:00", "p101e3.mp3");
INSERT INTO episode VALUES (4, "P-101", "Episode 4: Topic 3", "In this episode, we discuss topic 3", "2022-01-26", "00:55:40", "p101e4.mp3");
INSERT INTO episode VALUES (5, "P-101", "Episode 5: Topic 4", "In this episode, we discuss topic 4", "2022-01-29", "01:05:00", "p101e5.mp3");
INSERT INTO episode VALUES (6, "P-101", "Episode 6: Topic 5", "In this episode, we discuss topic 5", "2022-01-30", "01:04:10", "p101e6.mp3");
INSERT INTO episode VALUES (7, "P-101", "Episode 7: Topic 6", "In this episode, we discuss topic 6", "2022-02-01", "00:59:15", "p101e7.mp3");
-- Three Questions
INSERT INTO episode VALUES (8, "P-102", "Episode 1: Topic 1", "In this episode, we talk about topic 1", "2022-02-05", "00:30:25", "p102e1.mp3");
INSERT INTO episode VALUES (9, "P-102", "Episode 2: Topic 2", "In this episode, we talk about topic 2", "2022-02-07", "00:30:00", "p102e2.mp3");
INSERT INTO episode VALUES (10, "P-102", "Episode 3: Topic 3", "In this episode, we talk about topic 3", "2022-02-09", "00:31:10", "p102e3.mp3");
INSERT INTO episode VALUES (11, "P-102", "Episode 4: Topic 4", "In this episode, we talk about topic 4", "2022-02-11", "00:32:50", "p102e4.mp3");
INSERT INTO episode VALUES (12, "P-102", "Episode 5: Topic 5", "In this episode, we talk about topic 5", "2022-02-13", "00:33:00", "p102e5.mp3");
-- Literally
INSERT INTO episode VALUES (13, "P-103", "First Episode", "In this episode, we consider the pros and cons of topic 1", "2022-01-20", "01:00:25", "p103e1.mp3");
INSERT INTO episode VALUES (14, "P-103", "Second Episode", "In this episode, we consider the pros and cons of topic 2", "2022-01-25", "01:03:20", "p103e2.mp3");
INSERT INTO episode VALUES (15, "P-103", "Third Episode", "In this episode, we consider the pros and cons of topic 3", "2022-01-28", "01:01:25", "p103e3.mp3");
INSERT INTO episode VALUES (16, "P-103", "Forth Episode", "In this episode, we consider the pros and cons of topic 4", "2022-02-01", "01:02:21", "p103e4.mp3");
INSERT INTO episode VALUES (17, "P-103", "Fifth Episode", "In this episode, we consider the pros and cons of topic 5", "2022-03-14", "01:00:09", "p103e5.mp3");
-- Inside Conan
INSERT INTO episode VALUES (18, "P-104", "Episode 1", "This week, we interview the IT department", "2022-01-14", "01:00:09", "p104e1.mp3");
INSERT INTO episode VALUES (19, "P-104", "Episode 2", "This week, we interview the props department", "2022-01-21", "01:01:09", "p104e2.mp3");
INSERT INTO episode VALUES (20, "P-104", "Episode 3", "This week, we interview the production department", "2022-02-01", "00:59:09", "p104e3.mp3");
INSERT INTO episode VALUES (21, "P-104", "Episode 4", "This week, we interview the editing department", "2022-02-07", "00:58:09", "p104e4.mp3");
-- Parks and Recollection
INSERT INTO episode VALUES (22, "P-105", "Pilot (S1E1)", "This week, we explore episode 1", "2022-02-05", "00:45:25", "p105e1.mp3");
INSERT INTO episode VALUES (23, "P-105", "Canvassing (S1E2)", "This week, we explore episode 2", "2022-02-08", "00:45:25", "p105e2.mp3");
INSERT INTO episode VALUES (24, "P-105", "Writer Dan Goor: The Reporter (S1E3)", "This week, we explore episode 3", "2022-02-11", "00:40:45", "p105e3.mp3");
INSERT INTO episode VALUES (25, "P-105", "Casting Directors Allison Jones & Ben Harris: Boys' Club (S1E4)", "This week, we explore episode 4", "2022-02-14", "00:47:30", "p105e4.mp3");

-- listener(episode_id, member_id, total_num_plays)
INSERT INTO listener VALUES (1, "M-101", 1);
INSERT INTO listener VALUES (2, "M-101", 2);
INSERT INTO listener VALUES (3, "M-101", 1);
INSERT INTO listener VALUES (5, "M-101", 2);
INSERT INTO listener VALUES (9, "M-101", 1);
INSERT INTO listener VALUES (10, "M-101", 1);
INSERT INTO listener VALUES (15, "M-101", 3);
INSERT INTO listener VALUES (1, "M-102", 1);
INSERT INTO listener VALUES (3, "M-102", 1);
INSERT INTO listener VALUES (25, "M-102", 1);
INSERT INTO listener VALUES (5, "M-103", 1);
INSERT INTO listener VALUES (6, "M-103", 1);
INSERT INTO listener VALUES (7, "M-103", 1);
INSERT INTO listener VALUES (11, "M-104", 1);
INSERT INTO listener VALUES (12, "M-104", 1);
INSERT INTO listener VALUES (22, "M-104", 1);
INSERT INTO listener VALUES (15, "M-105", 1);
INSERT INTO listener VALUES (16, "M-105", 2);
INSERT INTO listener VALUES (17, "M-105", 1);
INSERT INTO listener VALUES (17, "M-106", 1);
INSERT INTO listener VALUES (18, "M-107", 1);
INSERT INTO listener VALUES (17, "M-108", 1);
INSERT INTO listener VALUES (8, "M-109", 2);
INSERT INTO listener VALUES (1, "M-109", 1);
INSERT INTO listener VALUES (21, "M-109", 1);
INSERT INTO listener VALUES (22, "M-110", 1);
INSERT INTO listener VALUES (23, "M-110", 1);
INSERT INTO listener VALUES (24, "M-110", 1);
INSERT INTO listener VALUES (10, "M-111", 1);
INSERT INTO listener VALUES (11, "M-112", 1);
INSERT INTO listener VALUES (25, "M-113", 1);
INSERT INTO listener VALUES (23, "M-114", 1);
INSERT INTO listener VALUES (24, "M-115", 1);
INSERT INTO listener VALUES (24, "M-116", 1);
INSERT INTO listener VALUES (22, "M-117", 1);
INSERT INTO listener VALUES (2, "M-118", 1);
INSERT INTO listener VALUES (21, "M-119", 1);
INSERT INTO listener VALUES (24, "M-120", 1);
INSERT INTO listener VALUES (24, "M-121", 1);
INSERT INTO listener VALUES (18, "M-122", 1);
INSERT INTO listener VALUES (17, "M-123", 1);
INSERT INTO listener VALUES (16, "M-124", 1);
INSERT INTO listener VALUES (15, "M-125", 1);
INSERT INTO listener VALUES (14, "M-126", 1);
INSERT INTO listener VALUES (13, "M-127", 1);
INSERT INTO listener VALUES (12, "M-128", 2);
INSERT INTO listener VALUES (11, "M-129", 1);
INSERT INTO listener VALUES (10, "M-130", 1);
INSERT INTO listener VALUES (9, "M-131", 1);
INSERT INTO listener VALUES (8, "M-132", 1);
INSERT INTO listener VALUES (7, "M-133", 1);
INSERT INTO listener VALUES (6, "M-134", 1);
INSERT INTO listener VALUES (5, "M-135", 1);
INSERT INTO listener VALUES (4, "M-136", 1);
INSERT INTO listener VALUES (3, "M-137", 2);
INSERT INTO listener VALUES (2, "M-138", 1);
INSERT INTO listener VALUES (1, "M-139", 1);
INSERT INTO listener VALUES (1, "M-140", 1);
INSERT INTO listener VALUES (2, "M-141", 1);
INSERT INTO listener VALUES (3, "M-142", 1);
INSERT INTO listener VALUES (4, "M-143", 1);
INSERT INTO listener VALUES (5, "M-144", 1);
INSERT INTO listener VALUES (6, "M-145", 1);
INSERT INTO listener VALUES (7, "M-146", 1);
INSERT INTO listener VALUES (8, "M-147", 1);
INSERT INTO listener VALUES (9, "M-148", 1);
INSERT INTO listener VALUES (10, "M-149", 1);
INSERT INTO listener VALUES (11, "M-150", 1);
INSERT INTO listener VALUES (12, "M-151", 1);
INSERT INTO listener VALUES (13, "M-152", 1);
INSERT INTO listener VALUES (14, "M-153", 1);
INSERT INTO listener VALUES (15, "M-154", 1);
INSERT INTO listener VALUES (16, "M-155", 1);
INSERT INTO listener VALUES (17, "M-156", 1);
INSERT INTO listener VALUES (18, "M-157", 1);
INSERT INTO listener VALUES (19, "M-158", 1);
INSERT INTO listener VALUES (20, "M-159", 1);
INSERT INTO listener VALUES (21, "M-159", 1);
INSERT INTO listener VALUES (22, "M-159", 1);
INSERT INTO listener VALUES (23, "M-160", 1);
INSERT INTO listener VALUES (24, "M-160", 2);
INSERT INTO listener VALUES (25, "M-160", 2);


-- guestAppearence(guest_id, episode_id)
INSERT INTO guestAppearence VALUES ("G-120", 1);
INSERT INTO guestAppearence VALUES ("G-121", 2);
INSERT INTO guestAppearence VALUES ("G-122", 3);
INSERT INTO guestAppearence VALUES ("G-123", 4);
INSERT INTO guestAppearence VALUES ("G-125", 5);
INSERT INTO guestAppearence VALUES ("G-126", 6);
INSERT INTO guestAppearence VALUES ("G-127", 7);
INSERT INTO guestAppearence VALUES ("G-128", 8);
INSERT INTO guestAppearence VALUES ("G-129", 9);
INSERT INTO guestAppearence VALUES ("G-130", 9);
INSERT INTO guestAppearence VALUES ("G-120", 15);
INSERT INTO guestAppearence VALUES ("G-121", 15);
INSERT INTO guestAppearence VALUES ("G-122", 17);
INSERT INTO guestAppearence VALUES ("G-123", 19);
INSERT INTO guestAppearence VALUES ("G-122", 20);
INSERT INTO guestAppearence VALUES ("G-123", 20);
INSERT INTO guestAppearence VALUES ("G-124", 21);
INSERT INTO guestAppearence VALUES ("G-125", 22);
INSERT INTO guestAppearence VALUES ("G-126", 23);
INSERT INTO guestAppearence VALUES ("G-127", 24);
INSERT INTO guestAppearence VALUES ("G-128", 25);


-- ********* Select statements ************
SELECT * FROM host;
SELECT * FROM podcast;
SELECT * FROM hosted;
SELECT * FROM member;
SELECT * FROM subscriber;
SELECT * FROM guest;
SELECT * FROM episode;
SELECT * FROM listener;
SELECT * FROM guestAppearence;