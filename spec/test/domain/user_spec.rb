require 'rails_helper'

module Domain
  describe User do
    let(:user) {
      described_class.new(
        email: 'luiz.affonso@gmail.com',
        password: '12345678',
        first_name: 'Luiz',
        last_name: 'Affonso',
        username: 'luiz.affonso',
        uid: '12345678'
      )
    }

    describe '#initialize' do
      it 'should be a instance of user' do
        expect(user).to be_a(Domain::User)
        expect(user).to respond_to(:email)
        expect(user).to respond_to(:password)
        expect(user).to respond_to(:first_name)
        expect(user).to respond_to(:last_name)
        expect(user).to respond_to(:username)
        expect(user).to respond_to(:uid)
      end
    end

    describe '#to_hash' do
      let(:user_hash) { user.to_hash }

      it 'should return a user hash' do
        expect(user_hash).to be_a(Hash)
        expect(user_hash).to have_key(:email)
        expect(user_hash).to have_key(:password)
        expect(user_hash).to have_key(:first_name)
        expect(user_hash).to have_key(:last_name)
        expect(user_hash).to have_key(:username)
        expect(user_hash).to have_key(:uid)
      end

      it 'should return a user hash with correct values' do
        expect(user_hash[:email]).to eq(user.email)
        expect(user_hash[:password]).to eq(user.password)
        expect(user_hash[:first_name]).to eq(user.first_name)
        expect(user_hash[:last_name]).to eq(user.last_name)
        expect(user_hash[:username]).to eq(user.username)
        expect(user_hash[:uid]).to eq(user.uid)
      end

      it 'should user hash to be equal user' do
        expect(user_hash).to eq(user.to_hash)
      end
    end
  end
end