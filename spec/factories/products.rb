# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  title      :string
#  price      :decimal(, )
#  published  :boolean
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_products_on_user_id  (user_id)
#
FactoryBot.define do
  factory :product do
    title { "MyString" }
    price { "9.99" }
    published { false }
    user { nil }
  end
end
