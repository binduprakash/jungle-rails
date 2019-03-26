require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'should fail if first_name is not given' do
      @user = User.new(
        first_name: nil,
        last_name:  'Prak',
        email: 'you@you.com',
        password_digest: 'kljsdf3s'
      )
      @user.valid?
      "First name can't be blank".should == @user.errors.full_messages[0]
    end
    it 'should fail if last_name is not given' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  nil,
        email: 'you@you.com',
        password_digest: 'kljsdf3s'
      )
      @user.valid?
      "Last name can't be blank".should == @user.errors.full_messages[0]
    end
    it 'should fail if email is not given' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  'sded',
        email: nil,
        password_digest: 'kljsdf3s'
      )
      @user.valid?
      "Email can't be blank".should == @user.errors.full_messages[0]
    end
    it 'should fail if password is not given' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  'sded',
        email: 'you@you.com',
        password: nil
      )
      @user.valid?
      "Password can't be blank".should == @user.errors.full_messages[0]
    end
    it 'should fail if password length is less than 8' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  'sded',
        email: 'you@you.com',
        password: '1234'
      )
      @user.valid?
      "Password is too short (minimum is 8 characters)".should == @user.errors.full_messages[0]
    end
  end

  describe '.authenticate_with_credentials' do
    it 'should pass if email and password is found' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  'sded',
        email: 'you@you.com',
        password: 'kljsdf3s'
      )
      @user.save
      User.authenticate_with_credentials('you@you.com', 'kljsdf3s').should == @user
    end
    it 'should fail if email and password is not found' do
      @user = User.new(
        first_name: 'Sol',
        last_name:  'sded',
        email: 'you@you.com',
        password: 'kljsdf3s'
      )
      @user.save
      User.authenticate_with_credentials('bindu@gmail.com', 'kljsdf3s').should_not == @user
    end
  end
end
