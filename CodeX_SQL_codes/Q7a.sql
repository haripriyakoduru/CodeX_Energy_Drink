--15.Which area of business should we focus more on our product development? (Branding/taste/availability)
select respondent_feedback,respondent_cnt from
(WITH r1 AS (
  SELECT
    respondent_feedback, SUM(respondent_cnt) AS total_respondent_cnt FROM
	(
    SELECT
      CASE WHEN taste_experience < 4 THEN 'Bad Taste' ELSE 'Good Taste' END AS respondent_feedback,
      COUNT(*) AS respondent_cnt
    FROM fact_survey_responses
    where heard_before='Yes' and tried_before='Yes'
    GROUP BY 1
  )a
  GROUP BY 1
  ORDER BY 2 DESC
  LIMIT 1
),
r2 AS (
  SELECT
    reasons_preventing_trying AS respondent_feedback, COUNT(*) AS respondent_cnt
  FROM fact_survey_responses
  WHERE reasons_preventing_trying not in ('Not interested in energy drinks', 'Other') and tried_before='No'
  GROUP BY 1
)
SELECT respondent_feedback, total_respondent_cnt as respondent_cnt
FROM r1
GROUP BY 1,2
UNION ALL
SELECT respondent_feedback, respondent_cnt
FROM r2
Group BY 1,2)x
group by 1,2
order by 2 desc
