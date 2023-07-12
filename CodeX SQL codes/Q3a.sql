--6.Who are the current market leaders?
select current_brands top_brands,count(respondent_id) cnt from fact_survey_responses
group by 1
order by 2 desc
limit 3