Subscriber.destroy_all

s1 = Subscriber.create :email=>"priyanka@ga.com", :first_name => "Priyanka", :last_name => "Patel", :software=>true, :hardware=>true

s2 = Subscriber.create :email=>"david@ga.com", :first_name => "David", :last_name => "Ye", :software=>false, :hardware=>true

s3 = Subscriber.create :email=>"faith@ga.com", :first_name => "Faith", :last_name => "Sylvia", :software=>true, :hardware=>false

puts "#{Subscriber.count} subsribers"


