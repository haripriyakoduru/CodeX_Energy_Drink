--16. What are the top marketing ways we can market our CodeX energy drink?
select a.marketing_channels,b.marketing_subtype as marketing_way,b.rating from fact_survey_responses a
join marketing_types b on b.marketing_channels=a.marketing_channels
where b.rating in (4,5)
group by 1,2,3
order by 3 desc