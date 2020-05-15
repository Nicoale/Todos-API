require 'rails_helper'

RSpec.describe Todo, type: :model do
  it 'should have valid Factory' do
    expect(FactoryBot.create(:todo)).to be_valid
      describe '#validation of user attributes' do
      it { is_expected.to validate_presence_of(:title) }
      it { is_expected.to validate_presence_of(:date) }
      it { is_expected.to validate_presence_of(:description) }
      end 
      context "valid attributes"do 
        it "creates a to do" do
          FactoryBot.create(:todo)
          todo= FactoryBot.build(:todo, title: "Get Milk", date: "2020-05-25", description: "Buy a box of milk from Sandy at 8am")
          todo.save
          expect (todo).to_be_valid
        end
        it "updates a to do date" do 
        end
        it "updates a to do title" do 
        end
      end
      context "invalid attributes " do 
        it "doesn't save past date" do
          todo = FactoryBot.build(:todo, date: "2019-12-31")
          todo.save        
          expect(user.errors.messages[:date]).to eq ["wrong date (past dates are not allowed)"]
        end 
        it "doesn't save blank date" do
          todo = FactoryBot.build(:todo, date: " ")
          todo.save        
          expect(user.errors.messages[:date]).to eq ["wrong date ( date is required)"] 
        end
        it "doesn't save blank title" do
          todo = FactoryBot.build(:todo, title: " ")
          todo.save        
          expect(user.errors.messages[:title]).to eq ["wrong title ( title is required)"]
      end
    end
  end
end
