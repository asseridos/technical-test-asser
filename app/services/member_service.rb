class MemberService
    def self.sort_by_most_recent_activity
        Member.includes(:activities).order("activities.created_at DESC")
    end

    def self.sort_by_most_activities_count
        Member.all.sort_by{|m| m.activities.count}.reverse
    end
end