require_relative "../rails_helper"

RSpec.describe Task, type: :model do 
  it "can't be created without a title " do
    
    task = Task.create
    expect(task).to_not be_persisted
    expect(task.errors[:title]).to eq(["can't be blank"])
  end

  it "can be created with a title" do
    
    task = Task.create(title: "Drink milk")
    expect(task).to be_persisted
    expect(task.title).to eq("Drink milk")
  end 

  it "can be created from the factory" do 
    task = create(:task)
    expect(task).to be_persisted
  end
end
