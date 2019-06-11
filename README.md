# README

Kitchen site

Models:

-User ( id , email , password , role )

-Dish ( id , title , weight , measure , price , untis , category_id )

-Category ( id , title )

-Daily menu ( id , date )

Views:

-dish - index, show , edit , new

-category - index ( all categories with related dishes ) , show , new , edit

-daily menu - index , show , edit , new

-admin - index , edit , new

Functional 

User may sign up to site , create dish , category and daily menu , edit and delete all of this , if he logged in .

Admin have all function form user , but may delete , edit and create new user .