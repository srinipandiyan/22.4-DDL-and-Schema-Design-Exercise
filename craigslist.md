Regions:
region_id (PK)
region_name

Users:
user_id (PK)
username
password
preferred_region_id (FK)

Posts:
post_id (PK)
title
text
location
user_id (FK)
region_id (FK)
category_id (FK)

Categories:
category_id (PK)
category_name