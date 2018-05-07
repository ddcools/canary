$count = 0
RSpec.describe "let" do
	let(:count) {$count += 1}	
	it "should memorize the value" do
		expect(count).to eq(1)
		expect(count).to eq(1)
	end

	it "should also memorize the value" do
		expect(count).to eq(2)
	end
end