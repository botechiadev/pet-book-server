-- Active: 1715581794933@@127.0.0.1@3306
create Table users (
  id text  primary key unique,
  name text not null,
  email text unique not null,
  password text not null,
  role text not null default "NORMAL",
  created_at text not null DEFAULT CURRENT_TIMESTAMP
);

create Table posts (
  id text PRIMARY key unique not null,
  creator_id text not null, 
  content text not null,
  likes integer not null,
  dislikes integer not null,
  created_at text not null DEFAULT CURRENT_TIMESTAMP,
  updated_at text not null DEFAULT CURRENT_TIMESTAMP,
  foreign key (creator_id) REFERENCES users
  on update cascade on delete cascade
  );

  drop table posts;

CREATE Table likes_dislikes (
  user_id text not null, 
  post_id text not null,
  likes integer not null,
  foreign key (user_id) REFERENCES users(id)
  on update cascade on delete cascade,
  foreign key (post_id) REFERENCES posts(id)
  on update cascade on delete cascade
);

insert into  users(id, name, email, password, role)VALUES(
  "fb1e0ffc-95c6-407d-8671-5114f54566a2",
  "labealuno83",
  "fulano@gmail.com",
  "$2y$12$cWZC0jN/qk00qTjdgLB84OmrqqTI.7PXuvmt2rrbSpYsBUEU22VxS",
  "Normal"),
  (
  "272647c9-2763-4161-aa7f-19b125013fdb",
  "labealuno8",
  "beltrano@gmail.com",
  "$2y$12$cWZC0jN/qk00qTjdgLB84OmrqqTI.7PXuvmt2rrbSpYsBUEU22VxS",
  "Normal")
,
  (
  "bb442755-ee46-4ee6-aa1f-22d6176dfe4a",
  "labealuno33",
  "ciclano@gmail.com",
  "$2y$12$cWZC0jN/qk00qTjdgLB84OmrqqTI.7PXuvmt2rrbSpYsBUEU22VxS",
  "Normal");

  INSERT INTO POSTS 
  (id,
  creator_id, 
  content,
  likes ,
  dislikes
)
  VALUES (
    "65adeab9-2fa6-46e8-95a3-eb0ada836ed7",
    "fb1e0ffc-95c6-407d-8671-5114f54566a",
    "Porque a maioria dos desenvolvedores usam Linux? ou as empresas de tecnologia usam Linux ?",
    0,
    0
  ),(
    "cd368921-8cc9-4a75-a6c8-5cbc8fe4f104",
      "272647c9-2763-4161-aa7f-19b125013fdb",
      "Qual super poder você gostaria de ter?",
      0,
      0
  );

 drop table likes_dislikes;

 SELECT * from posts;

  CREATE TABLE comment (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        post_id TEXT NOT NULL,
        creator_id TEXT NOT NULL,
        dislikes INTEGER DEFAULT (0) NOT NULL,
        likes INTEGER DEFAULT (0) NOT NULL,
        content TEXT NOT NULL,
        created_at TEXT DEFAULT (DATETIME()) NOT NULL,
        update_at TEXT DEFAULT (DATETIME()) NOT NULL,
        FOREIGN KEY (creator_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (post_id) REFERENCES posts(id) ON UPDATE CASCADE ON DELETE CASCADE
  );

  SELECT * FROM comment;


CREATE TABLE 