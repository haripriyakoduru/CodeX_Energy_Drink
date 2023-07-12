--3.Which type of marketing reaches the most Youth (15-30)?
select a.marketing_channels,count(a.respondent_id) cnt from fact_survey_responses a
join dim_respondents b on a.respondent_id=b.respondent_id
where b.age in ('15-18','19-30')
group by 1
 order by 2 desc
limit 1