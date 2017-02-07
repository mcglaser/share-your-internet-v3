# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) 
           - Communities has_many Users
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
           - Users belong_to a Community
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
           - User has_many Referrals through Rolodexes 
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
           - User may submit a nickname for the rolodex and the information for the referall 
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
           - See User model
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
           - Average cost of internet across all Users
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
           - Referrals and Rolodexes are nested
- [x] Include signup (how e.g. Devise)
           - signup through the users_controller create method
- [x] Include login (how e.g. Devise)
           - sessions_controller
- [x] Include logout (how e.g. Devise)
           - logout through users_controller
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
           - OmniAuth is used for Facebook signups and logins for employee backend
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
           - users/?/rolodexes/?
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
           - users/?/rolodexes/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
           - validations throughout

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
