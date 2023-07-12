--7.What are the primary reasons consumers prefer those brands over ours?
select reasons_for_choosing_brands reasons,count(respondent_id) cnt from fact_survey_responses
group by 1
order by 2 desc
limit 3