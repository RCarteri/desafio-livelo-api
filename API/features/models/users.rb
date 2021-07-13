class UsersModel
    attr_accessor :id, :name, :email, :gender, :status

    def user_hash
        {
            id: @id,
            name: @name,
            email: @email,
            gender: @gender,
            status: @status
        }
    end
end
