module Rest
  class Users
      include HTTParty

      headers 'Accept' => 'application/json',
              'Content-Type' => 'application/json',
              'Authorization' => 'Bearer 2b6ba21eeb760589e3d90f79633abfc8040fa516da47fc8e911d69d03b5caac4'

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
