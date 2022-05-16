module Domain
  class Product
    attr_reader :title, :price, :published, :user_id

    def initialize(title:, price:, published:, user_id:)
      @title = title
      @price = price
      @published = published
      @user_id = user_id
    end

    def to_hash
      {
        title: @title,
        price: @price,
        published: @published,
        user_id: @user_id
      }
    end
  end
end