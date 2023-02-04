# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual
#
# The last two are from the has_secure_password method
# We will not have to set password_digest myself
# I will only hvae to interact with password and password_confirmation when we create a user
# has_secure_password will make sure the password and password confirmation matches and 
# pass it to bcrypt to create a digest and assign it to password_digest



class User < ApplicationRecord
    # USes the password_digest column to add a password and password confirmation to our user.
    #It hashes the password so that it can be saved to the database.
    has_secure_password
end
