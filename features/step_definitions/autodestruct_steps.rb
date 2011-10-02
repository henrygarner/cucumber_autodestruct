Given /^I have wired up my subject$/ do
  @sizzle = Cucumber::Autodestruct.new
  sleep 2
end

When /^I supply electrickery$/ do
  @sizzle.start!
end

Then /^I should see a pretty light$/ do
  5.times do
    puts "Light level: #{@sizzle.light_level}"
    sleep 1
  end
  @sizzle.stop!
end
