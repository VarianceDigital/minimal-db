
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE SCHEMA minimaldb;


CREATE TABLE minimaldb.tbl_image (
    img_id bigint NOT NULL,
    img_name character varying(124),
    img_caption character varying(255),
    img_filename character varying(255) NOT NULL,
    img_tstamp timestamp with time zone DEFAULT now() NOT NULL,
    img_onair boolean DEFAULT true NOT NULL,
    img_seqno integer DEFAULT 0,
    img_is_in_hp boolean DEFAULT false
);



ALTER TABLE minimaldb.tbl_image ALTER COLUMN img_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME minimaldb.tbl_image_img_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (8, 'You are late!', 'We are hungry.', 'kitchen2.jpg', '2022-08-26 11:29:23.832889+02', true, 8, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (1, 'Apple-Cat', 'Tau loves laptops.', 'applecat.jpg', '2022-08-25 14:14:15.421157+02', true, 1, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (2, 'White as snow', 'Pi''s paws are soft!', 'beauty.jpg', '2022-08-25 14:15:23.859847+02', true, 2, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (3, 'I''m invisible', 'Most of the time...', 'coocoo.jpg', '2022-08-25 17:18:54.200687+02', true, 3, true);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (4, 'Perfect symmetry', 'But unstable equilibrium.', 'gattonzisimmetrici.jpg', '2022-08-25 17:20:43.265025+02', true, 4, true);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (5, 'Urban forest ', 'Dominating the street.', 'green.jpg', '2022-08-25 17:22:22.81356+02', true, 5, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (6, 'Pink nose', 'Am I cute?', 'imcute.jpg', '2022-08-26 11:24:58.203425+02', true, 6, true);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (9, 'Like a pro', 'Tau tries to teach how to lay down.', 'likeapro.jpg', '2022-08-26 11:31:26.428694+02', true, 9, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (10, 'Like a pro v.2', 'Tau tries to teach how to lay down. Again.', 'likeapro2.jpg', '2022-08-26 11:32:42.679881+02', true, 10, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (15, 'Brother and sister', 'One cushion each.', 'twoinbed.jpg', '2022-08-26 11:40:40.375683+02', true, 13, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (16, 'Soft sun', 'Let''s peek outside.', 'twoinbed2.jpg', '2022-08-26 11:42:35.190133+02', true, 14, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (17, 'I need cuddles', 'What are you waiting for?', 'whatareyouwaitingfor.jpg', '2022-08-26 11:43:34.034881+02', true, 15, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (11, 'Spider', 'The new friend stopped playing after a while.', 'spider.jpg', '2022-08-26 11:34:02.181243+02', true, 11, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (14, 'Hmmm...', 'Pi thinks humans are strange bipeds.', 'spunta.jpg', '2022-08-26 11:34:02.181243+02', true, 12, false);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (18, 'I''m special', 'So you want to be a cat?...', 'whatsup.jpg', '2022-08-26 11:45:24.599242+02', true, 16, true);
INSERT INTO minimaldb.tbl_image OVERRIDING SYSTEM VALUE VALUES (7, 'Sous-chef', 'Waiting for the human cook.', 'kitchen1.jpg', '2022-08-26 11:27:15.86196+02', true, 7, false);


SELECT pg_catalog.setval('minimaldb.tbl_image_img_id_seq', 18, true);


ALTER TABLE ONLY minimaldb.tbl_image
    ADD CONSTRAINT tbl_image_pkey PRIMARY KEY (img_id);


