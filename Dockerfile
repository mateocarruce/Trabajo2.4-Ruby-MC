# Use the official Ruby image
FROM ruby:3.2

# Install application dependencies
WORKDIR /app
COPY Gemfile* ./
RUN bundle install

# Copy the application code
COPY . .

# Expose port 4567 (default for Sinatra)
EXPOSE 4567

# Command to run the application
CMD ["ruby", "app.rb"]