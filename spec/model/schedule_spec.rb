require_relative "../rails_helper"

RSpec.describe Schedule, type: :model do 
  it "can be created if there's cat and task" do

    cat = Cat.create(name: "Gem")
    task = Task.create(title: "Drink milk")
    schedule = Schedule.create(cat: cat, task: task)

    expect(schedule).to be_persisted
  end

  it "can't be created if there isn't a cat and task" do
    
    schedule = Schedule.create
    
    expect(schedule).to_not be_persisted
    expect(schedule.errors.messages[:task]).to eq(["must exist", "can't be blank"])
    expect(schedule.errors.messages[:cat]).to eq(["must exist", "can't be blank"])

  end
  
  it "can be created from the factory" do 
    schedule = create(:schedule)
    expect(schedule).to be_persisted
  end
end





