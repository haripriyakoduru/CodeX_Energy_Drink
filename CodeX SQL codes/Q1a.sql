--1.Who prefers energy drink more? (male/female/non-binary?)
select consume_frequency, gender from
(select a.consume_frequency, b.gender, count(a.respondent_id) cnt,
rank()over(partition by a.consume_frequency order by count(a.respondent_id) desc) rnk from fact_survey_responses a 
join dim_respondents b on a.respondent_id=b.respondent_id
group by 1,2)d
where rnk=1
group by 1,2

