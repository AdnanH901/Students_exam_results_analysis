# Students' Exam Results Analysis

This analysis aims to explore and identify the key factors that contribute to the academic success or struggles of students. By examining various aspects such as attendance, socio-economic background, parental involvement, study habits, and more, this project seeks to uncover patterns and correlations that may influence student performance. The goal of leveraging data analysis and visualisation techniques is to provide actionable insights that can inform educators, parents, and policymakers.

Insights and recommendations are provided on the following key areas:
- **Parental Involvement** - Should parents be more laid back or proactive?
  
- **Access to Resources** - Does better access to resources mean better exam scores?
  
- **Hard work vs Smart work** - Does spending more time working always result in higher grades?
  
- **Prior Exam Records** - Are prior exam records telling of a student’s final grade?
  
- **Public Or Private School** - Does a private school have a greater advantage over a state/ public school?

- **Physical Activities** - Do physical activities influence exam scores?

## Key Deliverables and Navigational Links

Targeted SQL queries regarding various business questions are found [here](https://github.com/AdnanH901/Students_exam_results_analysis/blob/main/students.sql).

The Tableau dashboards presenting insights in the key areas explored are found [here](https://github.com/AdnanH901/Students_exam_results_analysis/blob/main/students.twb).

To quickly view the overview of findings and recommendations, click on [Overview of Findings](#overview-of-findings) and [Recommendations](#recommendations).

# Data Structure & Initial Checks
## ERD Diagram of Data
<img src="https://github.com/user-attachments/assets/fc0aae4a-3a5a-4217-933b-b7e8ab176b59" width=400>

## Summary of Data

The data consists of one table, `Student_Performance_Factors`, with **21 columns** showing individual statistics and demographics of about **6,607 students**, resulting in **approximately 130,000** datapoints. A description of the table's columns is as follows:

- `Hours_Studied` – Number of hours a student studies per week.
- `Attendance` – Attendance percentage or number of days present at school.
- `Parental_Involvement` – Level of parental support and engagement, defined as _Low_, _Medium_ or _High_.
- `Access_to_Resources` – Availability of learning tools such as books, internet, or devices, defined as _Low_, _Medium_ or _High_.
- `Extracurricular_Activities` – Participation in non-academic activities, defined as _Yes_ or _No_
- `Sleep_Hours` – Average number of sleep hours per night.
- `Previous_Scores` – Academic performance in the previous term as a percentage.
- `Motivation_Level` – Self-reported or teacher-assessed student motivation, defined as _Low_, _Medium_ or _High_.
- `Internet_Access` – Quality or consistency of internet access, defined as _Yes_ or _No_
- `Tutoring_Sessions` – Number of tutoring sessions attended.
- `Family_Income` – Economic background of the student’s family, defined as _Low_, _Medium_ or _High_.
- `Teacher_Quality` – Evaluation of teachers’ effectiveness, defined as _Low_, _Medium_ or _High_.
- `School_Type` – Type of institution, defined as _Private_ or _Public_.
- `Peer_Influence` – Influence of classmates or friends, defined as _Positive_, _Neutral_ or _Negative_.
- `Physical_Activity` – Frequency of physical activity per week.
- `Learning_Disabilities` – Any reported learning challenges or disabilities, defined as _Yes_ or _No_.
- `Parental_Education_Level` – Highest education level attained by parents, defined as _Postgraduate_, _High School_, _College_ or None.
- `Distance_from_Home` – Distance from home to school, defined as _Near_, _Moderate_ or _Far_.
- `Gender` – Defined as _Male_ or _Female_.
- `Exam_Score` – Final exam score, out of **100**.

# Executive Summary

## Overview of Findings

Please refer to the [presentation](https://github.com/AdnanH901/Students_exam_results_analysis/blob/main/Students%20Exam%20Results%20Analysis.pdf) for further information.

- **More Parental Support** - Although the impact is small, students whose parents are more involved tend to perform better.
  
- **Better Access to Resources** - There is a significant difference between students who do and do not have a lot of resources.
  
- **Greater Attendance = Better Grades** - School attendance impacts high performers and underperformers.
  
- **Consistent School Results** - The type of school has little to no effect on the final exam score.
  
- **More Hours = Better Grades** - Students who study more hours, regardless of skill/ attendance, perform better.
  
- **Unrealistic Previous Exams** - The previous exams were a lot easier than the final exams, not a clear indication of the final score of a student.

# Insights Deep Dive

## Insights 1
***FURTHER ANALYSIS OF INSIGHT 1***

## Insights 2
***FURTHER ANALYSIS OF INSIGHT 2***

## Insights 3
***FURTHER ANALYSIS OF INSIGHT 3***

# Recommendations:

Based on the insights and findings above, we would recommend that schools, teachers and governing bodies consider the following:

***INSERT RECOMMENDATIONS HERE***

# Assumptions and Caveats:

Throughout the analysis, multiple assumptions and caveats were made to manage challenges with the data. These assumptions and caveats are noted below.

## Assumptions

***INSERT ASSUMPTIONS HERE***

## Caveats

***INSERT CAVEATS HERE***
