require 'rspec'  
class Task
     attr_reader :content, :id, :completed
     @@current_id = 1
     def initialize(content)
         @content = content
         @id = @@current_id
         @@current_id += 1
         @completed = false
         @incomplete = false
     end
     
     def completed!
     @completed = true
     end
     
     def completed?
     @completed
     end
     
     def make_incomplete!
     end
     
     def incomplete?
     @incomplete
     end

     def update_content(content)
        @content = content
    end

end