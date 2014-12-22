def get_hashtags(post)
  # get all valid hashtags along with inline hashtags like "in#line" and "#in#line"
  matches = post.scan(/#+[a-zA-Z][\w#]*/)

  # filter inline hashtags without leading hashtag like "in#line"
  matches.delete_if do |match|
    true unless (( post.index(match) == 0 ) or ( post[post.index(match) - 1] == " " )) and (( post.index(match) + match.length == post.length ) or ( post[post.index(match) + match.length] == " " ))
  end

  # filter inline hashtags with leading hashtag like "#in#line"
  matches.delete_if do |match|
    true if (match =~ /^#+[a-zA-Z][\w]*$/).nil?
  end

  # map out hashtag content
  matches.map{ |match| match.sub(/^#+/,"") }
end

p "should return []:"
p get_hashtags("12")
p 'should return ["a12"]:'
p get_hashtags("abc #a12")
p 'should return ["a12", "He"]:'
p get_hashtags("#a12 ###He")
p 'should return ["twitter"]:'
p get_hashtags("#abc#def #x#y#z# #twitter")
p 'should return ["twitter"]:'
p get_hashtags("in#line #twitter")
p 'should return ["G12"]:'
p get_hashtags("#G12 *#?!")
