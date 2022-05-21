# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

csv_text = File.read(Rails.root.join('seeds_multiple_activities.txt'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  member = Member.find_by(
    name: row['member_name'],
    email: row['member_email'],
    github: row['member_github'],
    twitter: row['member_twitter'],
    location: row['member_location']
  )
  if !row['member_tags'].nil?
    row['member_tags']&.split(',').each do |tag|
      tag = Tag.find_or_initialize_by(
        name: tag
      )
      tag.members << member
      tag.save!
      member.tags << tag
      member.save!
    end
  end
end

# Second seed

# csv.each do |row|
#   member = Member.find_by(
#     name: row['member_name'],
#     email: row['member_email'],
#     github: row['member_github'],
#     twitter: row['member_twitter'],
#     location: row['member_location']
#   )

#   activity = Activity.find_or_initialize_by(
#     member: member,
#     action: row['activity_action'],
#     description: row['activity_description'],
#     url: row['activity_url'],
#   )

#   activity.save!
# end

# First seed

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'seeds.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

# csv.each do |row|
#   member = Member.new(
#     name: row['member_name'],
#     email: row['member_email'],
#     github: row['member_github'],
#     twitter: row['member_twitter'],
#     location: row['member_location']
#   )
#   member.save!

#   activity = Activity.new(
#     member: member,
#     action: row['activity_action'],
#     description: row['activity_description'],
#     url: row['activity_url'],
#   )

#   activity.save!
# end