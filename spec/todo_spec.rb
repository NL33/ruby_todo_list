require 'rspec'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('paint the fence')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read the description out' do
    test_task = Task.new('paint the fence')
    test_task.description.should eq 'scrub the zebra'
  end


  describe(List) do
  it("starts out with an empty list of tasks") do
    test_list = List.new("home cleaning")
    test_list.tasks.should eq []
  end

  it("can add tasks") do
    test_list = List.new("home cleaning")
    test_task = Task.new("Studying")
    test_list.add_task(test_task)
    test_list.tasks.should eq [test_task]
  end
end
end

