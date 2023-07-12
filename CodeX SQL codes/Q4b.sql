--9.How effective are different marketing strategies and channels in reaching our customers?
--BY AGE GROUP
select age,marketing_channels as top_marketing_channels from
(select b.age,a.marketing_channels,count(a.respondent_id) cnt,
rank()over(partition by b.age order by count(a.respondent_id) desc) rnk
from fact_survey_responses a
join dim_respondents b on b.respondent_id=a.respondent_id
where heard_before='Yes' and b.gender='Male'
group by 1,2)r
where rnk=1
group by 1,2