require_relative "../rails_helper"

RSpec.describe Cat, type: :model do 
  it "can be built with a name" do
    cat = Cat.create(name: "Trash")

    expect(cat).to be_persisted
    expect(cat.name).to eq("Trash")
  end

  it "cannot be built without a name" do
    cat = Cat.create(name: " ")

    expect(cat).to be_new_record
    expect(cat.errors[:name]).to eq(["can't be blank"])
    
    cat.name = "Fluffy"
    cat.save 
    expect(cat).to be_persisted

    expect(cat.errors[:name]).to be_empty
  end

  it "can have zero, one or many tasks" do
    cat = Cat.create(name: "Jeff")

    expect(cat.tasks.count).to eq(0)

    tasks = [ ] 

    tasks << Task.create(title: "Kill mouse")
    cat.tasks << tasks.last
    expect(cat.tasks.pluck(:id)).to eq(tasks.map(&:id))

    tasks << Task.create(title: "Drink milk")
    cat.tasks << tasks.last
    expect(cat.tasks.pluck(:id)).to eq(tasks.map(&:id))
  end
end