require 'rails_helper'

RSpec.describe User, type: :model do
  it 'cannot create user without a name'
  it 'cannot create user without a password'
  it 'cannot create user without a password_confirmation'
end
