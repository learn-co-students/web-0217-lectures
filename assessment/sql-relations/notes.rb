# Ok, now we have a totally different website then in object relations section.
# Please don't base your answers on your ruby work.

# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# 1. As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like


# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table


# 		Table Relations
# 	  ==================== 					
#1) review BELONGS TO a customer
#2) review BELONGS TO restaurant through customer
#3) customer HAS MANY reviews
#4) customer HAS MANY restaurants through reviews
#5) restaurant HAS MANY reviews
#6) restaurant HAS MANY customers through reviews
#7) restaurant BELONGS TO owner
#8) owner HAS MANY restaurants
#9) owner HAS MANY reviews through restaurants


# customers
id | name |

# owners
id | name

# restaurant 
id | name | owner_id

# reviews
id | review | customer_id | restaurant_id


# 2. As a second step, please fill in the stubbed out methods in the respective model.
# Customer#reviews
# Owner#restaurants
# Restaurant#owner
# Review#customer
# Review#restaurant
