SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', 'c77160e4-44a7-49bf-8fde-121f0d844502', '{"action":"user_confirmation_requested","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-06 13:22:08.704164+00', ''),
	('00000000-0000-0000-0000-000000000000', '95ae9b2e-a66f-42f9-8fd8-abbe517f4117', '{"action":"user_signedup","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"team"}', '2024-09-06 13:22:27.221194+00', ''),
	('00000000-0000-0000-0000-000000000000', '8326ea1c-2e27-4346-ba47-059e7c5305ac', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:29:20.426417+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fd1876f6-f5a4-413d-a5b4-5e7aec5447a8', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:29:58.685655+00', ''),
	('00000000-0000-0000-0000-000000000000', '7de599dd-6b44-4043-af73-6832dccc3558', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:30:26.754468+00', ''),
	('00000000-0000-0000-0000-000000000000', 'be80e788-0f58-4924-865e-4d2d49cace3e', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:30:36.63418+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c21bfd87-f07b-428a-b13d-03bf430daa12', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:30:51.377333+00', ''),
	('00000000-0000-0000-0000-000000000000', '46981427-729f-4cbc-b6f9-5498fa06c96f', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:31:48.682067+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd28fd226-ea21-45b7-aa58-e5dc9b9cff46', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:55:14.627217+00', ''),
	('00000000-0000-0000-0000-000000000000', '291d4060-bdc0-40ec-8563-84f314037672', '{"action":"login","actor_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-06 13:55:26.759186+00', ''),
	('00000000-0000-0000-0000-000000000000', '853d8b50-0d84-4277-85e7-4f3361be4969', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"abdullahaak06@gmail.com","user_id":"b07d5cd9-1d23-40df-b7ed-677ae0d96930","user_phone":""}}', '2024-09-06 14:18:46.15446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd208a56e-c5b8-441d-8b60-bb2bcce6c04e', '{"action":"user_confirmation_requested","actor_id":"e2dc9634-511e-48df-86df-370c610fb708","actor_username":"lslreciever@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-10 10:00:52.074667+00', ''),
	('00000000-0000-0000-0000-000000000000', '5f3c9d16-a755-4576-abcc-7f18a178185e', '{"action":"user_confirmation_requested","actor_id":"e2dc9634-511e-48df-86df-370c610fb708","actor_username":"lslreciever@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-10 10:01:13.188595+00', ''),
	('00000000-0000-0000-0000-000000000000', '88e46194-49d9-4dc7-843a-b8f7ef44f183', '{"action":"user_confirmation_requested","actor_id":"e2dc9634-511e-48df-86df-370c610fb708","actor_username":"lslreciever@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-10 10:03:25.306476+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e9a83f46-7e2d-44e1-a3be-4c80aeb7355a', '{"action":"user_confirmation_requested","actor_id":"e2dc9634-511e-48df-86df-370c610fb708","actor_username":"lslreciever@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-10 10:03:50.229411+00', ''),
	('00000000-0000-0000-0000-000000000000', '365632d0-bef7-4408-9786-3f5ac4ec6278', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lslreciever@gmail.com","user_id":"e2dc9634-511e-48df-86df-370c610fb708","user_phone":""}}', '2024-09-10 10:19:39.34204+00', ''),
	('00000000-0000-0000-0000-000000000000', '4d5a0a15-4713-4712-bab7-082e9b9317de', '{"action":"user_confirmation_requested","actor_id":"6516ade8-54c0-4837-a8b6-302324acf2a0","actor_name":"Abdullah Ahmad","actor_username":"lslreciever@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-10 10:20:17.113213+00', ''),
	('00000000-0000-0000-0000-000000000000', '92b8fd66-d23d-4559-b307-a33c3390834a', '{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"lslreciever@gmail.com","user_id":"6516ade8-54c0-4837-a8b6-302324acf2a0","user_phone":""}}', '2024-09-10 10:28:20.425368+00', ''),
	('00000000-0000-0000-0000-000000000000', '2dfdbc8c-73b4-4ee1-bb3c-080b28e22fec', '{"action":"user_confirmation_requested","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-09-12 12:39:33.104998+00', ''),
	('00000000-0000-0000-0000-000000000000', '593c1ea0-2169-48f0-ae22-010e94839f8b', '{"action":"user_signedup","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"team"}', '2024-09-12 12:40:15.618549+00', ''),
	('00000000-0000-0000-0000-000000000000', '817663e6-f2fd-4637-97c4-72cb07d90c9d', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 12:44:08.963102+00', ''),
	('00000000-0000-0000-0000-000000000000', '82fda60d-c840-4f44-9603-81eab2b5f850', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 12:44:36.85077+00', ''),
	('00000000-0000-0000-0000-000000000000', '73535ac2-40dc-48c3-a323-ba97754e2d69', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 12:45:23.331728+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c44c48e-2967-4c66-928c-0cb021ab336b', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 12:45:52.842434+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b228c0c-4704-4e58-a67b-fd5e3abc2755', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 12:46:28.081992+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd6fae2d0-c1dc-4470-b198-0b99599af57d', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jobboardadmin@gmail.com","user_id":"9629a203-1fa1-4386-9712-53dfc1477adb","user_phone":""}}', '2024-09-12 12:54:59.324846+00', ''),
	('00000000-0000-0000-0000-000000000000', '0c4fe785-c129-4733-b292-b610b1975c96', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 14:38:37.66444+00', ''),
	('00000000-0000-0000-0000-000000000000', '993a0d41-ada3-4500-9c29-152e0203caaf', '{"action":"login","actor_id":"9629a203-1fa1-4386-9712-53dfc1477adb","actor_username":"jobboardadmin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-12 14:57:50.463473+00', ''),
	('00000000-0000-0000-0000-000000000000', '1fe882ff-e9f4-438e-accd-609c4c81c607', '{"action":"login","actor_id":"9629a203-1fa1-4386-9712-53dfc1477adb","actor_username":"jobboardadmin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 21:02:34.618561+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd58bb2db-f1be-4214-aae8-e6bf2f1e4986', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 21:04:20.737475+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dcc747ca-9161-4a0d-bf98-81a7e5293de9', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 22:08:59.918549+00', ''),
	('00000000-0000-0000-0000-000000000000', '7a0d2a74-4c6b-49c5-84fb-afa7b6bd350e', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 22:31:42.758748+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ed3169fb-685d-4a87-83d6-a01729a545cc', '{"action":"login","actor_id":"9629a203-1fa1-4386-9712-53dfc1477adb","actor_username":"jobboardadmin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 23:03:24.20235+00', ''),
	('00000000-0000-0000-0000-000000000000', '09da0272-34bc-449b-8139-f2c9712ddd62', '{"action":"login","actor_id":"9629a203-1fa1-4386-9712-53dfc1477adb","actor_username":"jobboardadmin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 23:09:59.550911+00', ''),
	('00000000-0000-0000-0000-000000000000', '93d66c6d-2c6f-4ad4-9584-ac02fbe9e653', '{"action":"login","actor_id":"9629a203-1fa1-4386-9712-53dfc1477adb","actor_username":"jobboardadmin@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-15 23:10:49.055348+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b359cc39-63f6-40c6-abc2-ef12cd09d550', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 12:42:07.081429+00', ''),
	('00000000-0000-0000-0000-000000000000', '98c7d5b3-7a17-4175-9dda-2881880ab038', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 12:42:18.872947+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bcf939c1-6fcb-426f-a1b0-c1bbc3466577', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 12:42:26.48185+00', ''),
	('00000000-0000-0000-0000-000000000000', '0223e96e-1b82-4b35-ae97-e2f976d583ef', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 12:42:49.920755+00', ''),
	('00000000-0000-0000-0000-000000000000', '65098cd7-7233-4c5d-9225-fad42fe40948', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 13:32:10.781708+00', ''),
	('00000000-0000-0000-0000-000000000000', '6d388523-4689-476f-8a69-a183b4fa0531', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 13:52:54.298382+00', ''),
	('00000000-0000-0000-0000-000000000000', '001b188d-80f5-45fb-bb0b-f74e9d099691', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 13:58:30.86573+00', ''),
	('00000000-0000-0000-0000-000000000000', '587d110a-bd56-47ab-8b13-5346ff78b5c6', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 13:58:58.887677+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aa597835-7d71-4c62-9ae6-93f01ea516d7', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 13:59:57.366267+00', ''),
	('00000000-0000-0000-0000-000000000000', '5be3523b-5384-4863-b85c-dace0ed91b72', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 14:01:45.655142+00', ''),
	('00000000-0000-0000-0000-000000000000', '081e99a2-286f-454b-9f74-d37d3c1be032', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 14:02:08.262344+00', ''),
	('00000000-0000-0000-0000-000000000000', '21cb4b7d-8bfe-45b2-b474-d3ef4e910d1a', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 14:04:14.551207+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a0054dfa-fb4e-46fd-be7d-1fe4ffeced48', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 14:08:56.097856+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fb46f06c-fd41-445f-8dfe-d52074a4732a', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:24:45.095679+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e22156b5-0098-42e0-86a1-0ba6b5f48def', '{"action":"token_revoked","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:24:45.098768+00', ''),
	('00000000-0000-0000-0000-000000000000', 'bdc5d78a-e0df-4bdc-95e6-6de12cf44e86', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:27:01.67176+00', ''),
	('00000000-0000-0000-0000-000000000000', '9c19855c-8cee-4491-8f58-c6066b8397ec', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:29:39.043343+00', ''),
	('00000000-0000-0000-0000-000000000000', '2f7681cb-1286-45e3-bfd6-c5f7e42e31fe', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:30:24.458531+00', ''),
	('00000000-0000-0000-0000-000000000000', '8138fe2d-2ba3-42e3-9233-2178dc335bfe', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:30:36.953975+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fbf66155-25e6-4769-b992-f4590eb1eae2', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:36:08.385795+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f42e8539-60a3-415d-aaae-be2c62aafdb8', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:38:39.614778+00', ''),
	('00000000-0000-0000-0000-000000000000', '95e1bbb2-6821-4bd8-8d26-f299314294b9', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:39:14.770472+00', ''),
	('00000000-0000-0000-0000-000000000000', '87b871d4-c7c5-42ae-8daa-39efb4c397c1', '{"action":"login","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-09-16 15:39:48.884561+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f908b052-7880-4b9a-8d43-ee2754c94812', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:51:55.292906+00', ''),
	('00000000-0000-0000-0000-000000000000', '314f4824-0955-4bce-901b-e599794647c7', '{"action":"token_revoked","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:51:55.294221+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ae361f02-295d-4d95-b798-9853c252ebf7', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:52:14.734265+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bf0e1f4-3ce5-4d28-b4cf-d84f2a1d7314', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:52:20.729995+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f406b7a5-dae2-4c05-971b-0a2c899ec22c', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:52:24.825979+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b8c759a1-c2ab-4b2e-b014-5168db1c533c', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:52:27.674347+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b5103ad3-5de7-47e3-bbde-bd8d7d0f0371', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:54:27.996726+00', ''),
	('00000000-0000-0000-0000-000000000000', '63770b81-2432-4b9a-a101-13c62fb261e4', '{"action":"token_refreshed","actor_id":"30ef4463-30b3-4ac3-b0e2-147c2bcc53e7","actor_name":"Abdullah Ahmad","actor_username":"abdullahaak06@gmail.com","actor_via_sso":false,"log_type":"token"}', '2024-09-16 15:54:49.128964+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 'authenticated', 'authenticated', 'abdullahaak06@gmail.com', '$2a$10$g1Z8zQkEszyO5P8Tj4QlqeSBZVbX70mQpEJRnzluR7a/cZd/GinGO', '2024-09-12 12:40:15.619121+00', NULL, '', '2024-09-12 12:39:33.113219+00', '', NULL, '', '', NULL, '2024-09-16 15:39:48.885197+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "30ef4463-30b3-4ac3-b0e2-147c2bcc53e7", "email": "abdullahaak06@gmail.com", "full_name": "Abdullah Ahmad", "email_verified": false, "phone_verified": false}', NULL, '2024-09-12 12:39:33.083038+00', '2024-09-16 15:51:55.298144+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '9629a203-1fa1-4386-9712-53dfc1477adb', 'authenticated', 'authenticated', 'jobboardadmin@gmail.com', '$2a$10$ITxGSnNhz6T.wgRy9EAgzesx2V4JvE3hcEh4dSrRPBy3NReux5Lga', '2024-09-12 12:54:59.326278+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-15 23:10:49.056009+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-09-12 12:54:59.312631+00', '2024-09-15 23:10:49.05759+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '{"sub": "30ef4463-30b3-4ac3-b0e2-147c2bcc53e7", "email": "abdullahaak06@gmail.com", "full_name": "Abdullah Ahmad", "email_verified": false, "phone_verified": false}', 'email', '2024-09-12 12:39:33.099666+00', '2024-09-12 12:39:33.099721+00', '2024-09-12 12:39:33.099721+00', '1984872a-bea1-4ee3-a3a8-78896b9a4195'),
	('9629a203-1fa1-4386-9712-53dfc1477adb', '9629a203-1fa1-4386-9712-53dfc1477adb', '{"sub": "9629a203-1fa1-4386-9712-53dfc1477adb", "email": "jobboardadmin@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-09-12 12:54:59.322722+00', '2024-09-12 12:54:59.322784+00', '2024-09-12 12:54:59.322784+00', '54c86a35-8cf6-40af-8152-ecd36a6bc377');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('db2f8175-4bec-41ff-b1e1-4e4c73e1ceb6', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:40:15.6233+00', '2024-09-12 12:40:15.6233+00', NULL, 'aal1', NULL, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '111.68.103.164', NULL),
	('17f8b861-5a73-4275-8bd9-cca8c65fefcb', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:44:08.966202+00', '2024-09-12 12:44:08.966202+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('2ffda241-7362-4413-9d58-ed3a3785011d', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:44:36.851739+00', '2024-09-12 12:44:36.851739+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('fe09efc9-a994-4186-a550-d956d464e067', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:45:23.332592+00', '2024-09-12 12:45:23.332592+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('612dc0be-8022-4c29-a656-b939d6392bad', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:45:52.843597+00', '2024-09-12 12:45:52.843597+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('6dd2ef0a-bb43-469c-bd21-8dd14331bcff', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 12:46:28.082782+00', '2024-09-12 12:46:28.082782+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('b06e7d2a-2a39-49da-9b78-15805d589345', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-12 14:38:37.673951+00', '2024-09-12 14:38:37.673951+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('f4048fb6-f7c9-4f26-b3e9-8106ffcd33b2', '9629a203-1fa1-4386-9712-53dfc1477adb', '2024-09-12 14:57:50.477706+00', '2024-09-12 14:57:50.477706+00', NULL, 'aal1', NULL, NULL, 'node', '111.68.103.164', NULL),
	('a0b90053-91a8-499a-af8e-4758ecb585a6', '9629a203-1fa1-4386-9712-53dfc1477adb', '2024-09-15 21:02:34.634635+00', '2024-09-15 21:02:34.634635+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('30c591ed-625d-41f1-a2c0-dbae0f334413', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-15 21:04:20.739304+00', '2024-09-15 21:04:20.739304+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('619ea20e-4b36-451a-ac81-11847d5df956', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-15 22:08:59.921207+00', '2024-09-15 22:08:59.921207+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('7d163c67-bd96-4851-80a9-71fc22e28b4e', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-15 22:31:42.760803+00', '2024-09-15 22:31:42.760803+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('38391f94-d420-46d3-9e2c-7f5fbdec291f', '9629a203-1fa1-4386-9712-53dfc1477adb', '2024-09-15 23:03:24.20444+00', '2024-09-15 23:03:24.20444+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('bf00d2eb-7b41-450a-b00e-8d3f84758373', '9629a203-1fa1-4386-9712-53dfc1477adb', '2024-09-15 23:09:59.556043+00', '2024-09-15 23:09:59.556043+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('f704a6d3-b31e-41c9-90bf-cfccb5148df7', '9629a203-1fa1-4386-9712-53dfc1477adb', '2024-09-15 23:10:49.056075+00', '2024-09-15 23:10:49.056075+00', NULL, 'aal1', NULL, NULL, 'node', '119.155.20.155', NULL),
	('f5f1da35-4daf-4b88-a40a-42af94d88bc2', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 12:42:07.093057+00', '2024-09-16 12:42:07.093057+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('d9c3e3b0-2956-4c2e-9bff-687e3927a5ef', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 12:42:18.87576+00', '2024-09-16 12:42:18.87576+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('58024330-b30d-4d51-87b2-00466660289b', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 12:42:26.482586+00', '2024-09-16 12:42:26.482586+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('78488bbb-b2cb-4f97-934c-06436403283d', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 12:42:49.921603+00', '2024-09-16 12:42:49.921603+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('af8c218b-fa44-4a92-8733-b4e2bf69b139', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 13:32:10.785205+00', '2024-09-16 13:32:10.785205+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('2963ea20-290b-460f-93d1-7dbfa9997926', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 13:52:54.300917+00', '2024-09-16 13:52:54.300917+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('0a281b3d-a628-4c78-a4bf-e619c6471260', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 13:58:30.867222+00', '2024-09-16 13:58:30.867222+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('e491b1d5-372c-4a42-a79f-ae71f033ed99', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 13:58:58.888492+00', '2024-09-16 13:58:58.888492+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('fdd6c9ac-92d2-4e06-b5af-871a1b150e57', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 13:59:57.36703+00', '2024-09-16 13:59:57.36703+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('5c347a74-0902-4c69-bb9e-21559bbac298', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 14:01:45.656162+00', '2024-09-16 14:01:45.656162+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('c80ea883-3708-43f2-9aad-ca188f3c37b6', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 14:02:08.263067+00', '2024-09-16 14:02:08.263067+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('90b64770-8e91-4927-8a97-83c2ec3635e6', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 14:04:14.552252+00', '2024-09-16 14:04:14.552252+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('92e567d8-9dba-46a3-93eb-6898771abd54', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 14:08:56.099507+00', '2024-09-16 15:24:45.108094+00', NULL, 'aal1', NULL, '2024-09-16 15:24:45.108007', 'node', '39.56.22.160', NULL),
	('bdd53cd3-d48f-4cea-b3f0-5410e7beb32f', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:27:01.673045+00', '2024-09-16 15:27:01.673045+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('2b5790e0-6eca-4698-9624-b7b718ba59d9', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:29:39.044383+00', '2024-09-16 15:29:39.044383+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('cd96fe8f-3657-491b-8d27-bc3ee3f0f83c', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:30:24.459374+00', '2024-09-16 15:30:24.459374+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('99214f2c-0918-42f7-a6de-a37b9bda359f', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:30:36.954746+00', '2024-09-16 15:30:36.954746+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('638aea7d-3d62-4465-8587-cf504ed7b7cc', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:36:08.387386+00', '2024-09-16 15:36:08.387386+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('1109127c-f392-4e93-aca5-f83dfc34b828', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:38:39.616994+00', '2024-09-16 15:38:39.616994+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('c4af20af-04f5-4096-9595-2378ce5d9f93', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:39:14.771211+00', '2024-09-16 15:39:14.771211+00', NULL, 'aal1', NULL, NULL, 'node', '39.56.22.160', NULL),
	('d8d31049-7d03-40cd-a98e-10e968199b8b', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', '2024-09-16 15:39:48.885267+00', '2024-09-16 15:54:49.130295+00', NULL, 'aal1', NULL, '2024-09-16 15:54:49.130223', 'node', '39.56.22.160', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('db2f8175-4bec-41ff-b1e1-4e4c73e1ceb6', '2024-09-12 12:40:15.643447+00', '2024-09-12 12:40:15.643447+00', 'otp', '50ebfe8a-7017-4795-a332-be563fa0c93e'),
	('17f8b861-5a73-4275-8bd9-cca8c65fefcb', '2024-09-12 12:44:08.973845+00', '2024-09-12 12:44:08.973845+00', 'password', '30b03a6e-c0c9-48f8-9904-44e1f2613c52'),
	('2ffda241-7362-4413-9d58-ed3a3785011d', '2024-09-12 12:44:36.853687+00', '2024-09-12 12:44:36.853687+00', 'password', '35cbae93-a4d1-4bc7-84fc-6698f5674391'),
	('fe09efc9-a994-4186-a550-d956d464e067', '2024-09-12 12:45:23.336778+00', '2024-09-12 12:45:23.336778+00', 'password', '6306cfac-1d09-47bc-af90-f81b825f855d'),
	('612dc0be-8022-4c29-a656-b939d6392bad', '2024-09-12 12:45:52.846943+00', '2024-09-12 12:45:52.846943+00', 'password', 'cf418b5c-0abb-42cd-a883-8342d827355f'),
	('6dd2ef0a-bb43-469c-bd21-8dd14331bcff', '2024-09-12 12:46:28.086806+00', '2024-09-12 12:46:28.086806+00', 'password', 'e7e68a44-362d-42f7-915f-a60a921ce582'),
	('b06e7d2a-2a39-49da-9b78-15805d589345', '2024-09-12 14:38:37.68264+00', '2024-09-12 14:38:37.68264+00', 'password', '10001e87-a5c8-4225-a791-b7d719fe4ac2'),
	('f4048fb6-f7c9-4f26-b3e9-8106ffcd33b2', '2024-09-12 14:57:50.493159+00', '2024-09-12 14:57:50.493159+00', 'password', 'dcc5689d-e849-48cf-8f51-1ed3566ad49c'),
	('a0b90053-91a8-499a-af8e-4758ecb585a6', '2024-09-15 21:02:34.656822+00', '2024-09-15 21:02:34.656822+00', 'password', 'c079686d-ebf0-49e6-9e5e-f0101982781d'),
	('30c591ed-625d-41f1-a2c0-dbae0f334413', '2024-09-15 21:04:20.747549+00', '2024-09-15 21:04:20.747549+00', 'password', 'd514388e-44be-4a97-bd7e-b221105294f2'),
	('619ea20e-4b36-451a-ac81-11847d5df956', '2024-09-15 22:08:59.930943+00', '2024-09-15 22:08:59.930943+00', 'password', 'a41dcdbe-c8db-4b42-adf2-beff6a689654'),
	('7d163c67-bd96-4851-80a9-71fc22e28b4e', '2024-09-15 22:31:42.768207+00', '2024-09-15 22:31:42.768207+00', 'password', 'cf8e7a9c-8bce-44c8-b2e2-49e3183480af'),
	('38391f94-d420-46d3-9e2c-7f5fbdec291f', '2024-09-15 23:03:24.210942+00', '2024-09-15 23:03:24.210942+00', 'password', '8f7f3f74-4dfb-4fba-acdc-d04faa21304d'),
	('bf00d2eb-7b41-450a-b00e-8d3f84758373', '2024-09-15 23:09:59.560794+00', '2024-09-15 23:09:59.560794+00', 'password', 'f88e1d8b-b196-4974-8a47-95feb799e82b'),
	('f704a6d3-b31e-41c9-90bf-cfccb5148df7', '2024-09-15 23:10:49.057891+00', '2024-09-15 23:10:49.057891+00', 'password', '814ba3a9-1d47-4f83-956b-bfd18e3b710f'),
	('f5f1da35-4daf-4b88-a40a-42af94d88bc2', '2024-09-16 12:42:07.111868+00', '2024-09-16 12:42:07.111868+00', 'password', 'dbc3e31a-8408-4357-bd62-9253c2d83f22'),
	('d9c3e3b0-2956-4c2e-9bff-687e3927a5ef', '2024-09-16 12:42:18.885319+00', '2024-09-16 12:42:18.885319+00', 'password', 'dfefe0c6-942e-47db-9a33-9ce66bd9d93f'),
	('58024330-b30d-4d51-87b2-00466660289b', '2024-09-16 12:42:26.486325+00', '2024-09-16 12:42:26.486325+00', 'password', '5b9592a5-a0e6-471a-8284-7a01d9e89b1c'),
	('78488bbb-b2cb-4f97-934c-06436403283d', '2024-09-16 12:42:49.925922+00', '2024-09-16 12:42:49.925922+00', 'password', '9d322b15-49b1-4c95-bd94-ddde4a2e3d15'),
	('af8c218b-fa44-4a92-8733-b4e2bf69b139', '2024-09-16 13:32:10.795917+00', '2024-09-16 13:32:10.795917+00', 'password', 'f9f4daba-c9b8-4e59-ba77-dbbbbb992916'),
	('2963ea20-290b-460f-93d1-7dbfa9997926', '2024-09-16 13:52:54.307999+00', '2024-09-16 13:52:54.307999+00', 'password', 'b8a5f880-158b-460d-ba8c-e5fd2dbcd1d2'),
	('0a281b3d-a628-4c78-a4bf-e619c6471260', '2024-09-16 13:58:30.871695+00', '2024-09-16 13:58:30.871695+00', 'password', 'c472d2ca-eb69-4927-92a7-542529b48bcb'),
	('e491b1d5-372c-4a42-a79f-ae71f033ed99', '2024-09-16 13:58:58.89051+00', '2024-09-16 13:58:58.89051+00', 'password', 'eb0577cc-b5a9-4b3f-9f92-cc8085909efa'),
	('fdd6c9ac-92d2-4e06-b5af-871a1b150e57', '2024-09-16 13:59:57.36897+00', '2024-09-16 13:59:57.36897+00', 'password', 'ca6b73f7-fd72-43c6-87c2-ed82f5b5b810'),
	('5c347a74-0902-4c69-bb9e-21559bbac298', '2024-09-16 14:01:45.659062+00', '2024-09-16 14:01:45.659062+00', 'password', '96e5ab02-d379-4fee-a9c3-1cd24dbdb358'),
	('c80ea883-3708-43f2-9aad-ca188f3c37b6', '2024-09-16 14:02:08.264888+00', '2024-09-16 14:02:08.264888+00', 'password', '537f1ae9-69b9-4564-bee7-f7364ef6944d'),
	('90b64770-8e91-4927-8a97-83c2ec3635e6', '2024-09-16 14:04:14.55739+00', '2024-09-16 14:04:14.55739+00', 'password', '1d257bf4-f47c-4340-b735-5a73f0905301'),
	('92e567d8-9dba-46a3-93eb-6898771abd54', '2024-09-16 14:08:56.105612+00', '2024-09-16 14:08:56.105612+00', 'password', '2d03cd23-9947-462e-858f-adcdb9ec9817'),
	('bdd53cd3-d48f-4cea-b3f0-5410e7beb32f', '2024-09-16 15:27:01.676931+00', '2024-09-16 15:27:01.676931+00', 'password', '499ca96f-710c-45c2-a834-ffb7e5ac113a'),
	('2b5790e0-6eca-4698-9624-b7b718ba59d9', '2024-09-16 15:29:39.049233+00', '2024-09-16 15:29:39.049233+00', 'password', '868bafae-6277-4cda-8378-23cb069df4b6'),
	('cd96fe8f-3657-491b-8d27-bc3ee3f0f83c', '2024-09-16 15:30:24.461332+00', '2024-09-16 15:30:24.461332+00', 'password', '22bba44f-a487-421c-bff0-793c4b569741'),
	('99214f2c-0918-42f7-a6de-a37b9bda359f', '2024-09-16 15:30:36.956793+00', '2024-09-16 15:30:36.956793+00', 'password', 'b28f38af-db26-474d-b9b0-f2ba1798e0fc'),
	('638aea7d-3d62-4465-8587-cf504ed7b7cc', '2024-09-16 15:36:08.393381+00', '2024-09-16 15:36:08.393381+00', 'password', 'b0d9366f-608c-4e44-8adb-77ad1acb5ac6'),
	('1109127c-f392-4e93-aca5-f83dfc34b828', '2024-09-16 15:38:39.624005+00', '2024-09-16 15:38:39.624005+00', 'password', 'e29de641-cd3c-4e37-8878-1564d3680cbf'),
	('c4af20af-04f5-4096-9595-2378ce5d9f93', '2024-09-16 15:39:14.773127+00', '2024-09-16 15:39:14.773127+00', 'password', 'a086c6f5-dd98-4839-96b3-d60ff03a7638'),
	('d8d31049-7d03-40cd-a98e-10e968199b8b', '2024-09-16 15:39:48.887209+00', '2024-09-16 15:39:48.887209+00', 'password', '764ba57f-6056-4ff9-a413-4f6979cec860');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 10, 'V2stH2qQMoVpf25-igHm7g', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:40:15.629802+00', '2024-09-12 12:40:15.629802+00', NULL, 'db2f8175-4bec-41ff-b1e1-4e4c73e1ceb6'),
	('00000000-0000-0000-0000-000000000000', 11, '2VMqq4F9RAqPKmEvaxwFug', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:44:08.96893+00', '2024-09-12 12:44:08.96893+00', NULL, '17f8b861-5a73-4275-8bd9-cca8c65fefcb'),
	('00000000-0000-0000-0000-000000000000', 12, 'Y3qwAlcI67nLtEVuYAXwbQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:44:36.852517+00', '2024-09-12 12:44:36.852517+00', NULL, '2ffda241-7362-4413-9d58-ed3a3785011d'),
	('00000000-0000-0000-0000-000000000000', 13, '0olvJkerk8JW5bxrmaA0fA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:45:23.33468+00', '2024-09-12 12:45:23.33468+00', NULL, 'fe09efc9-a994-4186-a550-d956d464e067'),
	('00000000-0000-0000-0000-000000000000', 14, 'UXXtkW5UKqaGHG1C7cBVKQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:45:52.84479+00', '2024-09-12 12:45:52.84479+00', NULL, '612dc0be-8022-4c29-a656-b939d6392bad'),
	('00000000-0000-0000-0000-000000000000', 15, 'Bb8Rd8uWtQ48_NHPK3oXsw', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 12:46:28.083526+00', '2024-09-12 12:46:28.083526+00', NULL, '6dd2ef0a-bb43-469c-bd21-8dd14331bcff'),
	('00000000-0000-0000-0000-000000000000', 16, 'WIcddERTiOpjrDYngAw55Q', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-12 14:38:37.677023+00', '2024-09-12 14:38:37.677023+00', NULL, 'b06e7d2a-2a39-49da-9b78-15805d589345'),
	('00000000-0000-0000-0000-000000000000', 17, 'EedbN8sApHc6eVkehALH-A', '9629a203-1fa1-4386-9712-53dfc1477adb', false, '2024-09-12 14:57:50.483294+00', '2024-09-12 14:57:50.483294+00', NULL, 'f4048fb6-f7c9-4f26-b3e9-8106ffcd33b2'),
	('00000000-0000-0000-0000-000000000000', 18, 'G53z8ZnxZ-xHJjJdYJwSOw', '9629a203-1fa1-4386-9712-53dfc1477adb', false, '2024-09-15 21:02:34.64549+00', '2024-09-15 21:02:34.64549+00', NULL, 'a0b90053-91a8-499a-af8e-4758ecb585a6'),
	('00000000-0000-0000-0000-000000000000', 19, '7TbaDQHrF9MoLnxslCFsUg', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-15 21:04:20.741267+00', '2024-09-15 21:04:20.741267+00', NULL, '30c591ed-625d-41f1-a2c0-dbae0f334413'),
	('00000000-0000-0000-0000-000000000000', 20, 'VMDBNa_NgcYcgISia9chpA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-15 22:08:59.924413+00', '2024-09-15 22:08:59.924413+00', NULL, '619ea20e-4b36-451a-ac81-11847d5df956'),
	('00000000-0000-0000-0000-000000000000', 21, 'T4RObb0udD9mkf1SjxRDaA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-15 22:31:42.763114+00', '2024-09-15 22:31:42.763114+00', NULL, '7d163c67-bd96-4851-80a9-71fc22e28b4e'),
	('00000000-0000-0000-0000-000000000000', 22, 'XJiz1zKY0vjTjRMYhlo6Zg', '9629a203-1fa1-4386-9712-53dfc1477adb', false, '2024-09-15 23:03:24.206375+00', '2024-09-15 23:03:24.206375+00', NULL, '38391f94-d420-46d3-9e2c-7f5fbdec291f'),
	('00000000-0000-0000-0000-000000000000', 23, 'aMyRw5KcNY8o3CiW80cO8w', '9629a203-1fa1-4386-9712-53dfc1477adb', false, '2024-09-15 23:09:59.558027+00', '2024-09-15 23:09:59.558027+00', NULL, 'bf00d2eb-7b41-450a-b00e-8d3f84758373'),
	('00000000-0000-0000-0000-000000000000', 24, 'Nt23a5Lze8W3KRR5nI7Cdw', '9629a203-1fa1-4386-9712-53dfc1477adb', false, '2024-09-15 23:10:49.056735+00', '2024-09-15 23:10:49.056735+00', NULL, 'f704a6d3-b31e-41c9-90bf-cfccb5148df7'),
	('00000000-0000-0000-0000-000000000000', 25, 'dAuFvBkpEF6rEMZ_dQEl2Q', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 12:42:07.099363+00', '2024-09-16 12:42:07.099363+00', NULL, 'f5f1da35-4daf-4b88-a40a-42af94d88bc2'),
	('00000000-0000-0000-0000-000000000000', 26, 'eLohHdGW0HJfNh0gPlg8uA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 12:42:18.880084+00', '2024-09-16 12:42:18.880084+00', NULL, 'd9c3e3b0-2956-4c2e-9bff-687e3927a5ef'),
	('00000000-0000-0000-0000-000000000000', 27, 'bh-W7pdKSvIERebRh2DCTg', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 12:42:26.483927+00', '2024-09-16 12:42:26.483927+00', NULL, '58024330-b30d-4d51-87b2-00466660289b'),
	('00000000-0000-0000-0000-000000000000', 28, 'WD9kwK-uQ_60NXc0jCuRuA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 12:42:49.923712+00', '2024-09-16 12:42:49.923712+00', NULL, '78488bbb-b2cb-4f97-934c-06436403283d'),
	('00000000-0000-0000-0000-000000000000', 29, 'pPuxgclz2yoQQuS9rz4CQg', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 13:32:10.790513+00', '2024-09-16 13:32:10.790513+00', NULL, 'af8c218b-fa44-4a92-8733-b4e2bf69b139'),
	('00000000-0000-0000-0000-000000000000', 30, 'kU_XK9kpntiNv6DGF-Zw4g', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 13:52:54.304472+00', '2024-09-16 13:52:54.304472+00', NULL, '2963ea20-290b-460f-93d1-7dbfa9997926'),
	('00000000-0000-0000-0000-000000000000', 31, 'Yo_78GYnlVKy21lVfp78XA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 13:58:30.869192+00', '2024-09-16 13:58:30.869192+00', NULL, '0a281b3d-a628-4c78-a4bf-e619c6471260'),
	('00000000-0000-0000-0000-000000000000', 32, 'FfzBd7Cw9BhlmNAy3yJX3Q', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 13:58:58.889261+00', '2024-09-16 13:58:58.889261+00', NULL, 'e491b1d5-372c-4a42-a79f-ae71f033ed99'),
	('00000000-0000-0000-0000-000000000000', 33, 'UR0YSJOpN4Ri_Y6IlYf-wQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 13:59:57.367748+00', '2024-09-16 13:59:57.367748+00', NULL, 'fdd6c9ac-92d2-4e06-b5af-871a1b150e57'),
	('00000000-0000-0000-0000-000000000000', 34, 'x1hja6Li7C9GkYFsL9rtKQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 14:01:45.657243+00', '2024-09-16 14:01:45.657243+00', NULL, '5c347a74-0902-4c69-bb9e-21559bbac298'),
	('00000000-0000-0000-0000-000000000000', 35, 'XZpHvVHQJLFbhbCH_8Ca_g', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 14:02:08.263746+00', '2024-09-16 14:02:08.263746+00', NULL, 'c80ea883-3708-43f2-9aad-ca188f3c37b6'),
	('00000000-0000-0000-0000-000000000000', 36, 'U7kpld3b9COfkAqZ69Ae_g', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 14:04:14.554557+00', '2024-09-16 14:04:14.554557+00', NULL, '90b64770-8e91-4927-8a97-83c2ec3635e6'),
	('00000000-0000-0000-0000-000000000000', 37, 'Q-AXRTMs3JeNAmZjTR4xzA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', true, '2024-09-16 14:08:56.102205+00', '2024-09-16 15:24:45.099269+00', NULL, '92e567d8-9dba-46a3-93eb-6898771abd54'),
	('00000000-0000-0000-0000-000000000000', 38, 'vN4RWi_gg8wz7NDugzdXpQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:24:45.104077+00', '2024-09-16 15:24:45.104077+00', 'Q-AXRTMs3JeNAmZjTR4xzA', '92e567d8-9dba-46a3-93eb-6898771abd54'),
	('00000000-0000-0000-0000-000000000000', 39, 'g2Wp_9doXZpCxOPMEfxY9w', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:27:01.674461+00', '2024-09-16 15:27:01.674461+00', NULL, 'bdd53cd3-d48f-4cea-b3f0-5410e7beb32f'),
	('00000000-0000-0000-0000-000000000000', 40, 'zMjj00aSZrOmQtQidQZCEw', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:29:39.046139+00', '2024-09-16 15:29:39.046139+00', NULL, '2b5790e0-6eca-4698-9624-b7b718ba59d9'),
	('00000000-0000-0000-0000-000000000000', 41, 'S-EfIxNTerukQbWEerMqAQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:30:24.460089+00', '2024-09-16 15:30:24.460089+00', NULL, 'cd96fe8f-3657-491b-8d27-bc3ee3f0f83c'),
	('00000000-0000-0000-0000-000000000000', 42, 'nzi5t4jQEWjN6Yb5g-X0jw', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:30:36.955536+00', '2024-09-16 15:30:36.955536+00', NULL, '99214f2c-0918-42f7-a6de-a37b9bda359f'),
	('00000000-0000-0000-0000-000000000000', 43, '7DCIxBe5GC5XAowRZGksWQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:36:08.389763+00', '2024-09-16 15:36:08.389763+00', NULL, '638aea7d-3d62-4465-8587-cf504ed7b7cc'),
	('00000000-0000-0000-0000-000000000000', 44, 'azEeWP7QVqROLn2qdgpZEA', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:38:39.619665+00', '2024-09-16 15:38:39.619665+00', NULL, '1109127c-f392-4e93-aca5-f83dfc34b828'),
	('00000000-0000-0000-0000-000000000000', 45, 'ku3FcI6gpMtpAD-Oiqwsig', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:39:14.771949+00', '2024-09-16 15:39:14.771949+00', NULL, 'c4af20af-04f5-4096-9595-2378ce5d9f93'),
	('00000000-0000-0000-0000-000000000000', 46, 'Z3ULkIx-klZ3XefEH68lgQ', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', true, '2024-09-16 15:39:48.885972+00', '2024-09-16 15:51:55.295103+00', NULL, 'd8d31049-7d03-40cd-a98e-10e968199b8b'),
	('00000000-0000-0000-0000-000000000000', 47, 'JST7kH6onSI_UsbxmpoTyg', '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', false, '2024-09-16 15:51:55.296541+00', '2024-09-16 15:51:55.296541+00', 'Z3ULkIx-klZ3XefEH68lgQ', 'd8d31049-7d03-40cd-a98e-10e968199b8b');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: job_difficulty_ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."job_difficulty_ratings" ("id", "created_at", "title", "rating", "slug") VALUES
	(1, '2024-09-12 13:00:44.621986+00', 'Beginner', 1, 'beginner');


--
-- Data for Name: statuses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."statuses" ("id", "type", "title", "slug", "created_at") VALUES
	(1, 'User', 'Active', 'active', '2024-09-12 12:39:09.838591+00'),
	(2, 'Job', 'Active', 'active', '2024-09-12 12:59:57.916138+00'),
	(3, 'Proposal', 'Pending', 'pending', '2024-09-15 22:36:11.999685+00');


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_roles" ("id", "created_at", "title", "slug") VALUES
	(1, '2024-09-12 12:37:50.441641+00', 'Freelancer', 'freelancer'),
	(2, '2024-09-12 12:55:57.010042+00', 'Admin', 'admin'),
	(3, '2024-09-12 12:56:12.630114+00', 'Super Admin', 'superadmin');


--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."user_profiles" ("name", "email", "created_at", "updated_at", "avatar_url", "id", "account_balance", "role_id", "status_id") VALUES
	('Abdullah Ahmad', 'abdullahaak06@gmail.com', '2024-09-12 12:39:33.08216', '2024-09-12 12:39:33.08216', NULL, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 0, 1, 1),
	('Test Admin', 'jobboardadmin@gmail.com', '2024-09-12 12:54:59.312262', '2024-09-12 12:54:59.312262', NULL, '9629a203-1fa1-4386-9712-53dfc1477adb', 0, 2, 1);


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."jobs" ("id", "created_at", "posted_by_id", "title", "description", "min_budget", "updated_at", "difficulty_rating_id", "max_budget", "decided_price", "decider_id", "worker_id", "status_id") VALUES
	(2, '2024-09-12 13:02:00.968936+00', '9629a203-1fa1-4386-9712-53dfc1477adb', 'WordPress Site Improvements', 'Improve my wordpress site of 4 pages. will pay well for good work.', 500, '2024-09-12 13:02:00.968936+00', 1, 1000, NULL, NULL, NULL, 2),
	(3, '2024-09-12 14:12:48.599562+00', '9629a203-1fa1-4386-9712-53dfc1477adb', 'MERN Stack dashboard', 'MERN Stack dashboard MERN Stack dashboardMERN Stack dashboard MERN Stack dashboard', 4000, '2024-09-12 14:12:48.599562+00', 1, 5000, NULL, NULL, NULL, 2);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: proposals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."proposals" ("id", "proposer_id", "job_id", "title", "description", "status_id", "created_at", "acceptor_id") VALUES
	(4, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:38:01.248991+00', NULL),
	(5, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:38:27.190992+00', NULL),
	(6, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:38:38.24823+00', NULL),
	(7, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:38:54.359954+00', NULL),
	(9, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:39:37.141403+00', NULL),
	(10, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:44:27.397299+00', NULL),
	(11, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:55:34.783895+00', NULL),
	(12, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:56:18.000299+00', NULL),
	(13, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:56:28.902062+00', NULL),
	(14, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:59:26.87198+00', NULL),
	(15, '30ef4463-30b3-4ac3-b0e2-147c2bcc53e7', 2, 'Help me please I am broke', 'I am your true developer', 3, '2024-09-15 22:59:47.213185+00', NULL);


--
-- Data for Name: withdrawal_requests; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 47, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: job_difficulty_ratings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."job_difficulty_ratings_id_seq"', 1, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."jobs_id_seq"', 3, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."payments_id_seq"', 1, false);


--
-- Name: proposals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."proposals_id_seq"', 15, true);


--
-- Name: statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."statuses_id_seq"', 2, true);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_roles_id_seq"', 3, true);


--
-- Name: withdrawal_requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."withdrawal_requests_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
