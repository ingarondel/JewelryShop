require 'rails_helper'

RSpec.describe Cart, type: :model do
  it { should have_many(:cart_items)}
   # it { should have_many(:products)}
   it { should belong_to(:user)}
   it { should validate_presence_of(:user_id)}
end
