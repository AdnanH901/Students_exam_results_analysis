USE students;

SELECT *
FROM spf;

DROP TABLE spf2;

CREATE TABLE spf2 (
	id INT PRIMARY KEY,
	Hours_Studied INT NOT NULL, 
    Attendance INT NOT NULL, 
    Parental_Involvement TEXT NOT NULL, 
    Access_to_Resources TEXT NOT NULL, 
    Extracurricular_Activities INT NOT NULL, 
    Sleep_Hours INT NOT NULL, 
    Previous_Scores INT NOT NULL, 
    Motivation_Level TEXT NOT NULL, 
    Internet_Access INT NOT NULL, 
    Tutoring_Sessions INT NOT NULL, 
    Family_Income TEXT NOT NULL, 
    Teacher_Quality TEXT NOT NULL, 
    School_Type TEXT NOT NULL, 
    Peer_Influence TEXT NOT NULL, 
    Physical_Activity INT NOT NULL, 
    Learning_Disabilities INT NOT NULL, 
    Parental_Education_Level TEXT NOT NULL, 
    Distance_from_Home TEXT NOT NULL, 
    Gender TEXT NOT NULL, 
    Exam_Score INT NOT NULL
);
	
INSERT INTO spf2 (
SELECT 
	ROW_NUMBER() OVER (),
    Hours_Studied,
    Attendance,
    Parental_Involvement,
    Access_to_Resources,
    IF(Extracurricular_Activities = "Yes", 1, 0),
    Sleep_Hours,
    Previous_Scores,
    Motivation_Level,
    IF(Internet_Access = "Yes", 1, 0),
    Tutoring_Sessions,
    Family_Income,
    Teacher_Quality,
    School_Type,
    Peer_Influence,
    Physical_Activity,
    IF(Learning_Disabilities = "Yes", 1, 0),
    Parental_Education_Level,
    Distance_from_Home,
    Gender,
    Exam_Score
FROM spf
);

SELECT *
FROM spf2
WHERE Exam_Score = 101;

SELECT COUNT(*)
FROM spf2;

SELECT 
	Gender, 
    COUNT(Gender),
    (COUNT(Gender)/ (SELECT COUNT(*) FROM spf2)) AS percent
FROM spf2
GROUP BY Gender;

SELECT AVG(Attendance)
FROM spf2;

SELECT AVG(Exam_Score)
FROM spf2;

SELECT 
	Motivation_Level,
    AVG(Exam_Score) 
FROM spf2
GROUP BY 1;


-- 1. Does hours studied or attendance affect exam score?
SELECT
	id,
	Attendance,
	Hours_Studied,
	Exam_Score
FROM spf2;

-- 2. What is the most common/ average hours studied?
WITH CTE AS (
	SELECT 
		Hours_Studied,
        ROW_NUMBER() OVER (PARTITION BY Hours_Studied) AS row_num
	FROM spf2
    ORDER BY 2 DESC
)
SELECT 
	AVG(Hours_Studied) OVER () AS `Average Hours Studied`,
    Hours_Studied AS `Modal Hours Studied`
FROM CTE
LIMIT 1;

# 3. Modal/ average attendance.
WITH CTE AS (
	SELECT 
		Attendance,
        ROW_NUMBER() OVER (PARTITION BY Attendance) AS row_num
	FROM spf2
    ORDER BY 2 DESC
)
SELECT 
	AVG(Attendance) OVER () AS `Average Attendance`,
    Attendance AS `Modal Attendance`
FROM CTE
LIMIT 1;

# 4. Should parents be more laid back or more proactive?
SELECT DISTINCT
	Parental_Involvement,
    Access_to_Resources,
    COUNT(id) OVER (PARTITION BY Parental_Involvement, Access_to_Resources) AS `Record Count`,
    ROUND(AVG(Exam_Score) OVER (PARTITION BY Parental_Involvement, Access_to_Resources), 2) AS `Average Exam Score`
FROM spf2
ORDER BY 1, 2;

SELECT DISTINCT
	Access_to_Resources,
    Family_Income,
    COUNT(id) OVER (PARTITION BY Access_to_Resources, Family_Income) AS `Record Count`,
    ROUND(AVG(Exam_Score) OVER (PARTITION BY Access_to_Resources, Family_Income), 2) AS `Average Exam Score`
FROM spf2
ORDER BY 4 DESC;

SELECT DISTINCT
	Parental_Involvement,
    ROUND(AVG(Tutoring_Sessions) OVER (PARTITION BY Parental_Involvement), 2) AS `Average Tutoring Hours`
FROM spf2;

SELECT DISTINCT
	Parental_Involvement,
    Tutoring_Sessions,
    Exam_Score,
    COUNT(id) OVER (PARTITION BY Parental_Involvement, Tutoring_Sessions) AS `Record Count`
FROM spf2;

WITH CTE AS (
	SELECT
		id,
		Motivation_Level,
		Exam_Score,
		PERCENT_RANK() OVER (ORDER BY Exam_Score) AS percent
	FROM spf2
)
SELECT *
FROM CTE
WHERE percent > 0.9;

SELECT School_Type, Teacher_Quality, COUNT(*)
FROM spf2
GROUP BY School_Type, Teacher_Quality;
	
SELECT AVG(Exam_Score - Previous_Scores)
FROM spf2;