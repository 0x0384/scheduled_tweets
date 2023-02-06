class Current < ActiveSupport::CurrentAttributes
    attribute :user
end

# This class is used in your request to assign things like the user, the timezone, 
# what kind of account they are on.
# The kind of details that pertain to the current request.
# It helps to define things that the need to be shared in your application
# Things like the session details of every user.