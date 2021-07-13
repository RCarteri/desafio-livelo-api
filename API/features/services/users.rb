module Rest
  class Users
      include HTTParty

      headers 'Content-Type' => 'application/json'
      base_uri CONFIG['base_uri']

      def get_users
          self.class.get('/users')
      end
  end
end
