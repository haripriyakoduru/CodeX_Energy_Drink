--13.What are the typical consumption situations for energy drinks among respondents?
select typical_consumption_situations,count(respondent_id)cnt from fact_survey_responses
group by 1
order by 2 desc
limit 3