# Write your code here.

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

    def badge_maker(attendees)
        "Hello, my name is #{attendees}."
    end

    def batch_badge_creator(attendees)
        badges = []
        attendees.each { |attendee| badges << badge_maker(attendee) }
        badges
    end

    def assign_rooms(attendees)
        attendees.map.with_index { |attendee, index| "Hello, #{attendee}! You'll be assigned to room #{index+1}!" }
    end

    def printer(attendees)
        batch_badge_creator(attendees).each { |badges| puts badges }
        assign_rooms(attendees).each { |index| puts index }
    end

printer(attendees)