require "rails_helper"

RSpec.describe Plot, type: :model do
  describe 'relationships' do
    it { should belong_to(:garden) }
    it { should have_many(:plot_plants) }
    it { should have_many(:plants).through(:plot_plants)}
  end
end