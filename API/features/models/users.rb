class UsersModel
    attr_accessor :name, :email, :gender, :status

    def user_hash
        {
            name: @name,
            email: @email,
            gender: @gender,
            status: @status
        }
    end
end
