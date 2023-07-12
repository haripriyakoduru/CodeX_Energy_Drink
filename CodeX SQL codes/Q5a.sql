--10.What do people think about our brand? (overall rating)
--OVERALL RATING OUT OF 5
select sum(rating*cnt)/sum(cnt) overall_rating from
(select brand_perception,case when brand_perception='Neutral' then 3 
when brand_perception='Positive' then 5
else 1 end as rating, count(respondent_id) cnt from fact_survey_responses
group by 1)a
