require 'byebug'
json.extract! comment, :content, :id
json.time_ago "#{time_ago_in_words(comment.created_at)} ago"
json.author do
  json.full_name "#{comment.author.first_name} #{comment.author.last_name}"
  json.id comment.author.id
end
