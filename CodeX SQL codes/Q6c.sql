--14.What factors influence respondents' purchase decisions, such as price range and limited edition packaging?
--PRICE RANGE
SELECT price_range, COUNT(respondent_id) respondent_cnt FROM fact_survey_responses
    GROUP BY 1
	ORDER BY 2 DESC

--LIMITED EDITION PACKAGING
SELECT limited_edition_packaging, COUNT(respondent_id) respondent_cnt FROM fact_survey_responses
    GROUP BY 1
	ORDER BY 2 DESC
	
--HEALTH CONCERNS
SELECT health_concerns, COUNT(respondent_id) respondent_cnt FROM fact_survey_responses
    GROUP BY 1
	ORDER BY 2 DESC