-- DROP DATABASE IF EXISTS sql_blog;
-- CREATE DATABASE sql_blog;
-- USE sql_blog;
-- DROP TABLE IF EXISTS Post;
-- CREATE TABLE Post (
--   postId          INT             PRIMARY KEY AUTO_INCREMENT,
--   title           VARCHAR(256)    NOT NULL,
--   body            TEXT            NOT NULL,
--   datePublished   DATETIME        DEFAULT NULL
-- );

-- SELECT *
-- FROM Post
-- WHERE title LIKE '%react redux%' OR
--       body LIKE '%react redux%';
--       
-- CREATE FULLTEXT INDEX idx_title_body ON Post (title, body);

SELECT
  *,
  MATCH(title, body) AGAINST('react redux') AS relevanceScore
FROM Post
-- WHERE MATCH(title, body) AGAINST('react redux');
-- WHERE MATCH(title, body) AGAINST('react -redux' IN BOOLEAN MODE); -- Exclude 'redux'.
-- WHERE MATCH(title, body) AGAINST('react -redux +form' IN BOOLEAN MODE); -- Exclude 'redux' and must include 'form'.
WHERE MATCH(title, body) AGAINST('"handling a form"' IN BOOLEAN MODE); -- Must include the exact phrase "handling a form".