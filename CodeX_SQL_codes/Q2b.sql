--5.What packaging preferences do respondents have for energy drinks?
select packaging_preference,count(respondent_id) cnt from fact_survey_responses
group by 1
order by 2 desc
limit 2