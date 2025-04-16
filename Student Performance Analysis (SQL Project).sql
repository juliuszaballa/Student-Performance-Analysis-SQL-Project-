-- View all records from the studentsperformance table
SELECT * FROM studentsperformance;

-- Calculate the average math, reading, and writing scores grouped by gender
SELECT gender,
       AVG(`math score`) AS avg_math,
       AVG(`reading score`) AS avg_reading,
       AVG(`writing score`) AS avg_writing
FROM studentsperformance
GROUP BY gender;

-- Calculate average scores by race/ethnicity and sort the results alphabetically by race/ethnicity
SELECT `race/ethnicity`,
       AVG(`math score`) AS avg_math,
       AVG(`reading score`) AS avg_reading,
       AVG(`writing score`) AS avg_writing
FROM studentsperformance
GROUP BY `race/ethnicity`
ORDER BY `race/ethnicity` ASC;

-- Analyze the impact of test preparation courses on student performance
SELECT `test preparation course`,
       AVG(`math score`) AS avg_math,
       AVG(`reading score`) AS avg_reading,
       AVG(`writing score`) AS avg_writing
FROM studentsperformance
GROUP BY `test preparation course`;

-- Compare average scores based on lunch type (standard vs. free/reduced)
SELECT lunch,
       AVG(`math score`) AS avg_math,
       AVG(`reading score`) AS avg_reading,
       AVG(`writing score`) AS avg_writing
FROM studentsperformance
GROUP BY lunch;

-- Get the top 5 students based on the total score (math + reading + writing)
SELECT *,
       (`math score` + `reading score` + `writing score`) AS total_score
FROM studentsperformance
ORDER BY total_score DESC
LIMIT 5;

-- Retrieve students who scored below 50 in all three subjects, sorted by race/ethnicity
SELECT *
FROM studentsperformance
WHERE `math score` < 50
  AND `reading score` < 50
  AND `writing score` < 50
ORDER BY `race/ethnicity` ASC;
