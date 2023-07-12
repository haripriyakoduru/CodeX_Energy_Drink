--11.Which cities do we need to focus more on? select tier from dim_cities
--TIER-1 & 2
select city, tier, male_respondent_cnt from
(select b.city, b.tier, count(a.respondent_id) male_respondent_cnt from fact_survey_responses a
join dim_respondents c on c.respondent_id=a.respondent_id
join dim_cities b on b.city_id=c.city_id
 where a.heard_before='Yes' and c.age in ('15-18','19-30','31-45') and c.gender='Male'
group by 1,2)d
where male_respondent_cnt>100
group by 1,2,3
order by 3 desc