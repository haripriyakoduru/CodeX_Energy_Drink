--8.Which marketing channel can be used to reach more customers?
select marketing_channels,count(respondent_id) cnt from fact_survey_responses
group by 1
order by 2 desc
limit 1