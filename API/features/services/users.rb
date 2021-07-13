module Rest
  class Users
      include HTTParty

      headers 'Content-Type' => 'application/json'
      base_uri CONFIG['base_uri']

      def get_users
          self.class.get('/users')
      end

      def get_user id
        self.class.get("/users/#{id}")
      end

      def post_users(user)
        self.class.post('/users', body: user.to_json)
      end
  end
end
