# 🎓 Student Performance Analysis (SQL Project)

This project analyzes a dataset of students’ academic performance using MySQL. The goal is to uncover how various factors like gender, race/ethnicity, test preparation, and lunch status affect student scores in math, reading, and writing.

## 📊 Dataset Columns
- gender
- race/ethnicity
- parental level of education
- lunch
- test preparation course
- math score
- reading score
- writing score

## 🔍 SQL Query Highlights
- Average scores by gender, race/ethnicity, parental education
- Comparison of scores between students with and without test prep
- Performance impact of lunch type (standard vs. free/reduced)
- Identified top-performing students by total score
- Filtered students with below-average performance in all subjects

## 🛠 Example Query
```sql
SELECT gender,
       AVG(`math score`) AS avg_math,
       AVG(`reading score`) AS avg_reading,
       AVG(`writing score`) AS avg_writing
FROM studentsperformance
GROUP BY gender;
