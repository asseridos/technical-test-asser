# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'seeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  member = Member.new(
    name: row['member_name'],
    email: row['member_email'],
    github: row['member_github'],
    twitter: row['member_twitter'],
    location: row['member_location']
  )
  member.save!

  activity = Activity.new(
    member: member,
    action: row['activity_action'],
    description: row['activity_description'],
    url: row['activity_url'],
  )

  activity.save!
end