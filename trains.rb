trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

#SAVE THE DIRECTION OF TRAIN 111 INTO A VARIABLE 
train111 = trains.each do |train|
  if train[:train]== "111"
    break train[:direction]
  end
end

puts train111



#Save the frequency of train 80B into a variable.

train80b = trains.each do |train|
  if train[:train] == "80B"
    break train[:frequency_in_minutes]
  end
end

puts train80b
#SAVE THE DIRECTION OF TRAIN 610 INTO A VARIABLE

train610= trains.each do |train|
  if train[:train] == "610"
    break train[:direction]
  end
end

puts train610

#PROVIDE THE NAME OF THE TRAIN THAT GOES NORTH
north_trains = []

trains.each do |train|
    if train[:direction] == "north"
      north_trains << train
    end
  end

puts north_trains
#PROVIDE A LIST OF TRAINS THAT GO EAST
east_trains = []
trains.each do |train|
    if train[:direction] == "east"
      east_trains << train
    end
  end

puts east_trains




#WRIE A METHOD THAT PROVIDES A LIST OF TRAINS GOING A SPECFIED DIRECTION
#METHOD SHOULD TAKE A LIST OF TRAINS, AND DESIRED DIRECTION AS ARGUMENTS


def trains_going_direction(array_of_trains, desired_direction)

  #loop through array_of_trains

  array_of_trains.each do |train|
    if train[:direction] == desired_direction
      puts train
    end
  end
end



trains_going_direction(trains, "north")
trains_going_direction(trains, "west")


#WHY DID USING PUTS PRINT OUT MY ENTIRE ARRAY
#I PUT PUTS BEFORE MY STATEMENT AND I GOT MY WHOLE ARRAY, RIGHT AFTER
#I GOT MY ARRAY BACK
#please ask!!!!!!!!!!!!!!


=begin
Pick one train and add another key/value pair
for the first_departure_time.
For simplicity, assume the first train always leave on the hour.
You can represent this hour as an integer: 6 for 6:00am, 12 for noon, 13 for 1:00pm, etc.
=end


#ADD A KEY VALUE PAIR TO ONE TRAIN, INFORMING OF FIRST DEPARTURE TIME

train80B= trains.each do |train|
  if train[:train] == "80B"
    train[:first_departure_time] = 2
  end
end

puts train80B
