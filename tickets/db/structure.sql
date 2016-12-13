CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "tickets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "seat_id" varchar, "address" text, "price_paid" decimal, "email_address" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "phone" varchar, "part_number" varchar);
CREATE TABLE "players" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "favorate" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "cost" varchar);
CREATE INDEX "index_players_on_cost" ON "players" ("cost");
CREATE TABLE "shows" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "details" text);
INSERT INTO schema_migrations (version) VALUES ('20160814102642');

INSERT INTO schema_migrations (version) VALUES ('20160814124104');

INSERT INTO schema_migrations (version) VALUES ('20160816113953');

INSERT INTO schema_migrations (version) VALUES ('20160823114938');

INSERT INTO schema_migrations (version) VALUES ('20160825144702');

INSERT INTO schema_migrations (version) VALUES ('20160825145128');

