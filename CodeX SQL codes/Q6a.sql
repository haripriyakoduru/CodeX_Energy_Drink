--12.Where do respondents prefer to purchase energy drinks?
select purchase_location top_purchase_location,count(respondent_id) cnt from fact_survey_responses
group by 1
order by 2 desc
limit 3