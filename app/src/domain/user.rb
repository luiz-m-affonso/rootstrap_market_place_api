module Domain
  class User
    attr_reader :email, :password, :first_name, :last_name, :username, :uid

    def initialize(email:, password:, first_name:, last_name:, username:, uid:)
      @email = email
      @password = password
      @first_name = first_name
      @last_name = last_name
      @username = username
      @uid = uid
    end

    def to_hash
      {
        email: @email,
        password: @password,
        first_name: @first_name,
        last_name: @last_name,
        username: @username,
        uid: @uid
      }
    end
  end
end
