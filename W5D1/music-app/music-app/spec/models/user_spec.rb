require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: 'dude1@dude.com', password: 'password') }

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it 'should validate password is longer than 6 characters' do
      short_pw_user = User.new(email: 'dude2@dude.com', password: 'word')
      short_pw_user.valid?
      expect(short_pw_user.errors.details[:password][0][:error]).to eq(:too_short)
    end
  end

  describe '#is_password?' do
    it 'should return true if given password matches user\'s password' do
      expect(user.is_password?('password')).to be true
    end

    it 'should return false if given password doesn\'t match user\'s password' do
      expect(user.is_password?('password2')).to be false
    end
  end

  describe '#reset_session_token' do
    it 'should set a new session token' do
      old_token = user.session_token
      user.reset_session_token!
      expect(old_token).not_to eq(user.session_token)
    end
  end

  describe '::find_by_credentials' do
    before { user.save! }
    it 'should find a user with the correct email and password' do
      u = User.find_by_credentials('dude1@dude.com', 'password')
      expect(u).to eq(user)
    end
  end
end
