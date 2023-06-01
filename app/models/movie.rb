class Movie < ActiveRecord::Base
 
        # Create a movie with a given title and save it
        def self.create_with_title(title)
          movie = Movie.new(title: title)
          movie.save
          movie
        end
      
        # Retrieve the first movie in the table
        def self.first_movie
          Movie.first
        end
      
        # Retrieve the last movie in the table
        def self.last_movie
          Movie.last
        end
        
        def self.movie_count
            Movie.count
        end

        def self.find_movie_with_id(id)
            Movie.find(id)
        end

        def self.find_movie_with_attributes(atttribute)
            Movie.find_by(atttribute)
        end

        def self.find_movies_after_2002
            Movie.where('release_date > ?', 2002)
        end

        def update_with_attributes (title)
            movie = Movie.find_by(title)  
            movie.update(title: "New Title")

        end

        def self.update_all_titles
            Movie.update_all(title: "New Title")

        end

        def self.delete_by_id(id)
            Movie.destroy(id)
        end

        def self.delete_all_movies
            Movie.destroy_all
        end
      
end