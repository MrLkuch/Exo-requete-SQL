-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags

SELECT *
FROM student_tag
Inner JOIN student on student_tag.student_id = student.id
Inner JOIN tag on student_tag.tag_id = tag.id

-- Exo 5.2
-- Listez tous les tags avec leurs students

SELECT *
FROM student_tag
Inner JOIN tag on student_tag.tag_id = tag.id
Inner JOIN student on student_tag.student_id = student.id

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags

SELECT *
FROM student_tag
Inner JOIN tag on student_tag.tag_id = tag.id
Inner JOIN student on student_tag.student_id = student.id
where student_id = 2

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students

SELECT *
FROM student_tag
Inner JOIN tag on student_tag.tag_id = tag.id
Inner JOIN student on student_tag.student_id = student.id
where tag_id = 2