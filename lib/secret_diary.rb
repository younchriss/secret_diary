class SecretDiary

    attr_reader :islocked, :entries, :islocked

    def initialize
        @entries = []
        @islocked = true
    end

    def unlock
        @islocked = false
    end

    def lock
        @islocked = true
    end

 

end

class Activity

    attr_reader :instance_of_secret_diary

    def initialize
        @instance_of_secret_diary= SecretDiary.new
    end

   def add_entry(entry)
        fail 'Unlock diary before adding entry' if instance_of_secret_diary.islocked
        instance_of_secret_diary.entries << entry
    end

    def get_entries
        fail 'Unlock diary before adding entry' if instance_of_secret_diary.islocked
        instance_of_secret_diary.entries
    end
end