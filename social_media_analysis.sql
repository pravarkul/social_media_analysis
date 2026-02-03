-- Project: Social Media User Behavior Analysis
-- Objective: Identify engagement drivers and user segments

-- 1. Total number of users in the dataset
SELECT COUNT(*) FROM social_media_user_analytics;
-- 2. Number of distinct countries represented
Select distinct country from social_media_user_analytics;
-- 3. Count of users by user_type (Creator vs Consumer)
SELECT user_type, COUNT(*) as COUNT FROM social_media_user_analytics group by user_type;
-- 4. Percentage distribution of user_type

-- 5. Average user_engagement_score overall
SELECT avg(user_engagement_score) from social_media_user_analytics;
-- 6. Average engagement score by engagement_segment
SELECT engagement_segment, avg(user_engagement_score) from social_media_user_analytics group by engagement_segment;
-- 7. Average total_time_spent_per_day by engagement_segment
SELECT engagement_segment, avg(total_time_spent_per_day) as 'Average total time spent per day' from social_media_user_analytics group by engagement_segment;
-- 8. Average daily_engagement_actions by user_type
SELECT user_type, avg(daily_engagement_actions) from social_media_user_analytics group by user_type;
-- 9. Top 5 countries by average user_engagement_score
SELECT country, avg(user_engagement_score) as average_engagement from social_media_user_analytics group by country order by average_engagement DESC limit 5;
-- 10. Engagement score comparison between Healthy and Unhealthy users
SELECT healthy_lifestyle, avg(user_engagement_score) from social_media_user_analytics group by healthy_lifestyle;
-- 11. Average total_time_spent_per_day for Creators vs Consumers
SELECT user_type, avg(total_time_spent_per_day) from social_media_user_analytics group by user_type;
-- 12. Average reels_watched_per_day by engagement_segment
SELECT engagement_segment, avg(reels_watched_per_day) from social_media_user_analytics group by engagement_segment; 
-- 13. Average posts_created_per_week by user_type
select user_type, round(avg(posts_created_per_week)) from social_media_user_analytics group by user_type;
-- 14. Top 10 users with highest daily_engagement_actions
select user_id, daily_engagement_actions from social_media_user_analytics order by daily_engagement_actions desc limit 10;
-- 15. Average weekly_dm_activity by engagement_segment
select engagement_segment, avg(weekly_dm_activity) from social_media_user_analytics group by engagement_segment;
-- 16. Engagement score by subscription_status
select subscription_status, avg(user_engagement_score) from social_media_user_analytics group by subscription_status;
-- 17. Average followers_count and following_count by user_type
select user_type, round(avg(followers_count),2), round(avg(following_count),2) from social_media_user_analytics group by user_type;
-- 18. Average user_engagement_score by privacy_setting_level
select privacy_setting_level, round(avg(user_engagement_score),3) from social_media_user_analytics group by privacy_setting_level;
-- 19. Average engagement score by life_stage
select life_stage, round(avg(user_engagement_score),3) from social_media_user_analytics group by life_stage;
-- 20. Average total_time_spent_per_day by age_group
select
  case
    when age < 18 then 'under 18'
    when age between 18 and 25 then '18-25'
    when age between 26 and 35 then '26-35'
    when age between 36 and 45 then '36-45'
    when age between 46 and 60 then '46-60'
    else '60+'
  end as age_group,
  avg(total_time_spent_per_day) as avg_time_spent
from social_media_user_analytics
group by age_group;
-- 21. Number of users logging in per day (last_login_date)
select user_id, total_time_spent_per_day, user_engagement_score
from social_media_user_analytics
where total_time_spent_per_day > (
    select avg(total_time_spent_per_day) from social_media_user_analytics
)
and user_engagement_score < (
    select avg(user_engagement_score) from social_media_user_analytics
);
-- 22. Average session length by engagement_segment
select engagement_segment, avg(average_session_length_minutes) from social_media_user_analytics group by engagement_segment;
-- 23. Users with high time spent but low engagement score
select user_id, total_time_spent_per_day, user_engagement_score
from social_media_user_analytics
where total_time_spent_per_day > (
  select avg(total_time_spent_per_day) from social_media_user_analytics
)
and user_engagement_score < (
  select avg(user_engagement_score) from social_media_user_analytics
);
-- 24. Top 5 creators by user_engagement_score
select user_id, user_engagement_score from social_media_user_analytics where user_type = 'Creator' order by user_engagement_score desc limit 5;
-- 25. Correlation-style analysis: average engagement score by daily_session_minutes bucket
select
  case
    when daily_session_minutes < 10 then 'very low'
    when daily_session_minutes between 10 and 30 then 'low'
    when daily_session_minutes between 31 and 60 then 'medium'
    else 'high'
  end as session_bucket,
  avg(user_engagement_score) as avg_engagement
from social_media_user_analytics
group by session_bucket
order by avg_engagement desc;
-- 26. Average notification_response_rate by engagement_segment
select engagement_segment, avg(notification_response_rate) from social_media_user_analytics group by engagement_segment;
-- 27. Premium vs non-premium comparison of engagement and time spent
select uses_premium_features as 'Premium vs non-premium', avg(total_time_spent_per_day), avg(daily_engagement_actions) from social_media_user_analytics group by uses_premium_features;
-- 28. Top content_type_preference by average engagement score
select content_type_preference, avg(user_engagement_score) from social_media_user_analytics group by content_type_preference order by avg(user_engagement_score) desc limit 1;
-- 29. Average daily_engagement_actions by country
select country, avg(daily_engagement_actions) from social_media_user_analytics group by country;
