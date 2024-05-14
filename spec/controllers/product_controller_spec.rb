require 'rails_helper'

RSpec.describe ProductController, type: :controller do
  render_views

  describe 'GET #show' do
    let(:product) { create :product }
    let(:user) { create :user } # Создаем фиктивного пользователя

    subject { get :show, params: { id: product.id }, session: { user_id: user.id } } # Передаем идентификатор пользователя в сессию

    context 'show product' do
      it 'render show view' do
        sign_in user # Вход пользователя в систему
        is_expected.to render_template :show
      end
    end
  end
end