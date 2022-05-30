module Domain
  class User
    attr_reader :name, :email, :first_name, :last_name, :username, :provider

    def initialize(name:, email:, first_name:, last_name:, username:, provider:)
      @name = name
      @email = email
      @first_name = first_name
      @last_name = last_name
      @username = username
      @provider = provider
    end

    def to_hash
      {
        name: @name,
        email: @email,
        first_name: @first_name,
        last_name: @last_name,
        username: @username,
        provider: @provider
      }
    end
  end
end