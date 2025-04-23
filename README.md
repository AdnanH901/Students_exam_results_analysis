# Students' Exam Results Analysis

This analysis aims to explore and identify the key factors that contribute to the academic success or struggles of students. By examining various aspects such as attendance, socio-economic background, parental involvement, study habits, and more, this project seeks to uncover patterns and correlations that may influence student performance. The goal of leveraging data analysis and visualisation techniques is to provide actionable insights that can inform educators, parents, and policymakers.

Insights and recommendations are provided on the following key areas:
- **Parental Involvement:** An investigation into the optimal level of parental engagement, exploring whether a more laid-back or proactive approach yields better academic outcomes for students.

- **Access to Resources:** An analysis of the relationship between students’ access to academic resources and their exam performance, assessing whether increased access consistently leads to higher scores.

- **Attendance & Work Ethic:** An assessment of study habits, examining whether longer study hours correlate with better grades or if strategic, efficient study methods offer greater academic returns.

- **Prior Exam Records:** An evaluation of the predictive power of previous academic performance and how well earlier exam results correlate with final grade outcomes.

- **Public or Private School:** A comparative study of students' performance across school types, assessing whether private school education offers a consistent advantage over public schooling.

- **Physical Activities:** A statistical analysis of the relationship between participation in physical activities and academic achievement, exploring whether exercise contributes positively to exam performance.


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
![image](https://github.com/user-attachments/assets/ff694a4f-124f-404d-ab02-67d58291cc06)

Please refer to the [students' performance presentation](https://github.com/AdnanH901/Students_exam_results_analysis/blob/main/Students%20Exam%20Results%20Analysis.pdf) for further information.

- **Greater Parental Involvement Leads to Better Grades** - Although the impact is small, students whose parents are more involved tend to perform better.
  
- **Better Access to Resources Leads to Better Grades** - There is a significant increase in overall grade scores when a student has better access to aacademic resources.
  
- **Greater Attendance = Better Grades** - School attendance impacts high performers and underperformers.

- **More Hours Studied = Better Grades** - Students who study more hours, regardless of skill/ attendance, perform better.
  
- **Consistent Results Regardless of School Type** - Both public and private schools have very similar average scores, with public schools having a slight edge over private schools in academic performance.
    
- **Unrealistic Previous Exams** — The previous exams were much easier than the final ones, which gave student the wrong impression of the difficulty of their final exams. 

# Insights Deep Dive

## Parental Involvement & Access to Resources Analysis
![image](https://github.com/user-attachments/assets/a2a79cfa-ab5c-4731-ad72-1e6772acc7e1)

- **Parental Involvement Insights:** Regardless of how many resources an individual is given, the average student grade increases with better parental involvement. This can be due to a multitude of reasons, such as,
  - **Accountability:** Parents who monitor their child's progress and assignments may instinctively force the child to hold themselves accountable for their work due to their innate urge to please their parents.
  - **Emotional Support:** Children often feel supported and valued when they know their parents are involved. That emotional backing can boost their confidence and motivation to do well in school.
  - **Structure & Routine** Involved parents often help create consistent routines for homework, studying, and sleep. That structure leads to better time management and focus.
- **Access to Resources Insights:** Irrespective of the level of involvement of the parents, the average student's grades increase with more access to resoruces This is to be expected as students who have better access to resources can learn from many different sources, have access to more questions/ information and can grow and develope more. Overall <ins>***higher levels of parental involvement and greater access to educational resources directly correlate with the academic success of a student.***</ins>

## Public or Private Schools
![image](https://github.com/user-attachments/assets/7922a18f-5232-4b57-9cbc-3b244cb9c588)

- **Numerous Similarities Between School Types:** Both public and private schools have similar breadowns of teaching quality, with low qualities between **10%**-**11%**, medium qualities between **59%**-**61%** and high qualities between **29%**-**30%** respectively. Both types of schools have similar results, with higher teaching qualities leading to better overall student success.
- *Public Schools Outperform Private Schools:** Students in public schools with high teacher quality perform the best, with average scores of **68**, with the rest trailing between **66%** and **67%** on average. This shows that public schools sampled are performing better than private schools sampled, which is unintuitive. This could be a result of,
  - **Equal Levels of Teaching:** The amount of effort put in by teachers is the same, no matter what type of school a child goes to. The teaching methods, work given and strategies implemented from both types of school amount to similar results.
  - **Access to Diverse Resources:** Public schools may offer a wider range of extracurricular programs, community partnerships, and specialised support services (e.g., counselling, mentoring, after‑school tutoring) that bolster student performance.
  - **Greater Diversity & Peer Learning Effects:** Public schools are often more diverse and bigger than private schools. This allows for richer peer-to-peer learning environments and greater chances for students to find compatible peers to collaborate with. This, in turn, enables students to benefit from different perspectives and collaborative study groups.
  - **Accountability and Oversight:** Public school teachers are often subject to more standardised evaluations, benchmarking, and regulatory oversight, which can drive a consistent focus on curriculum standards and measurable outcomes.

## Attendance & Work Ethic
<img src="https://github.com/user-attachments/assets/fe1dc5fb-f39f-42e7-add1-6dbc225c7efe" width=700>
<img src="https://github.com/user-attachments/assets/ca6021a5-3f50-4080-af4d-b7b208deffa7" width=300>

- **Greater Attendance Leads to Better Grades:** The data shows two clear clusters, with the bottom cluster being more populated than the top cluster (defined as academically gifted students). Looking at the bottom cluster, it is clear that <ins>***students with below average attendance have strictly lower grades than students with above average attendance***</ins>, with students below average having attendance around **65** marks and students above average having attendance around **90** marks. Although the gifted students do not have such a clear pattern, one can notice that the highest achieving of the academically gifted students tend to have roe school attendance.
- **Hours Studied Analysis:** Excluding the academically gifted students, <ins>***there is an overall strong positive correlation between the weekly number of hours studied after school and the exam scores***</ins>. A student with low attendance studying for at least **30+** hours rivals students with high attendance but who have studied a small number of hours. Furthermore, the data does suggest some weak positive correlation between the academic success of a student and the number of hours they have studied

# Recommendations:

Based on the insights and findings above, we would recommend that schools, teachers and governing bodies consider the following:

- **Provide More Realistic Exams:** Unrealistic exams can intimidate or mislead students into thinking they are ill or well prepared for an exam when that may not be the case. Providing more realistic exams can allow a student to adapt their revision/ learning strategies, enable teachers to give targeted revision suggestions etc. This can be achieved through:
  1. **Real‑World Contextualization**  
     - Embed problems in relatable scenarios (e.g., shopping-based math problems).  
     - Collaborate with local professionals for authentic task design.

  2. **Regular Review & Updates**  
     - Convene annual review boards to refresh outdated items.  
     - Monitor score distributions year‑to‑year for unexpected shifts.
       
  3. **Transparent Practice Materials**  
     - Publish full sample exams with rubrics and scoring guides.  
     - Host workshops to walk through sample responses and grading criteria.

- **Give Children Better Access to Educational Resources:** It has been shown that students who have the most access to resources do the best in exams. We suggest that libraries obtain more funding and have a wider catalogue of books and literature, teachers and schools should research ways to encourage students to read more books, and governing bodies should distribute curriculum-relevant books and literature to schools.

- **Peer Collaboration for Teachers:** Encourage regular cross‑school (public↔private) teacher workshops or “lesson‐study” sessions where educators share the strategies that produce those top 29–30% high‑quality teaching outcomes.

- **Mentoring Programs:** Pair less‑experienced teachers with those in the high‑quality bracket to accelerate the spread of effective methods.

- **Parent–Teacher “Huddles”:** Introduce short, focused check‑ins (10–15 minutes) each term that align on goals, share observations, and co‑create at‑home support plans.

- **Integrate Home–School Resource Platforms:** These can be things such as:
  - **Unified Online Portal:** A single platform where teachers upload recommended readings, tutorial videos, curated web resources, and interactive modules/ practice exercises linked to classroom lessons.
  - **Gamified Progress Tracking:** Incorporate badges or points when students—and by extension parents—complete extra resource modules, encouraging joint parent–child engagement. Parents can see and remind students to engage with these materials, reinforcing involvement.
 
- **Early‑Warning & Outreach:** Use attendance data to flag students falling below 85% attendance. Counsellors or mentors can then reach out—via phone, text or even home visits to understand barriers (such as transportation, health, family obligations, etc) and connect families to solutions.

# Assumptions and Caveats:

Throughout the analysis, multiple assumptions and caveats were made to manage challenges with the data. These assumptions and caveats are noted below.

## Assumptions

Assumption 1: The data drawn from [Kaggle](https://www.kaggle.com/datasets) is assumed to be an accurate depiction of academic performance and student behaviour.

Assumption 2: The sample of students in the data is an accurat representation of all students, their behaviour and habits.

## Caveats

- High, medium and low are not properly defined for access to resources, parental involvement and more. There should be another datapoint that explains why such variables are high, medium or low. 
