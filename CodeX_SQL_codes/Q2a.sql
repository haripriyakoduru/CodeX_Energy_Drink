--4.What are the preferred ingredients of energy drinks among respondents?
select ingredients_expected,count(respondent_id) cnt
from fact_survey_responses a
group by 1
order by 2 desc
limit 1
