# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  title      :string
#  price      :decimal(, )
#  published  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
FactoryBot.define do
  factory :product do
    title { "MyString" }
    price { "9.99" }
    published { false }
  end
end
