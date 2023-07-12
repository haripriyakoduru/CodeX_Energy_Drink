--2.Which age group prefers energy drinks more?
select consume_frequency,age,respondent_cnt from
(select a.consume_frequency,b.age, count(a.respondent_id) respondent_cnt,
rank()over(partition by a.consume_frequency order by count(a.respondent_id) desc) rnk
 from dim_respondents b
join fact_survey_responses a on a.respondent_id=b.respondent_id
group by 1,2)c
where rnk=1
group by 1,2,3