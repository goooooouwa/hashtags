require 'pry'

def get_hashtags(post)
  # get all valid hashtags along with inline hashtags like "in#line" and "#in#line"
  matches = post.scan(/#[a-zA-Z][\w#]*/)
  # filter inline hashtags without leading hashtag like "in#line"
  matches.delete_if do |match|
    true unless (( post.index(match) == 0 ) or ( post[post.index(match) - 1] == " " )) and (( post.index(match) + match.length == post.length ) or ( post[post.index(match) + match.length] == " " ))
  end
  matches
end
p get_hashtags("12 abc #a12 #He #abc#def in#line #x#y#z# #twitter #G12 *#?!")