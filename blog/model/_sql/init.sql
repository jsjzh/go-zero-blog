INSERT INTO
  `user` (
    email,
    phone,
    password,
    nickname,
    gender,
    avatar,
    role
  )
values
  (
    "jinzhehao@souche.com",
    "18368094601",
    "123456",
    "king",
    2,
    "url",
    1
  );

INSERT INTO
  `article_type` (code, name)
values
  ("frontend", "frontend");

INSERT INTO
  `article` (title, content, article_type_id)
values
  ("hello", "hello world content", 1);

INSERT INTO
  `comment` (user_id, article_id, content)
values
  (1, 1, "hello world");