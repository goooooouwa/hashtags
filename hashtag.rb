# test string: "12 abc #a12 #He #abc#def in#line #x#y#z# #twitter #G12 *#?!"
def get_hashtags(post)
  puts post.scan(/#[a-zA-Z][\w#]*/)
end
get_hashtags("12 abc #a12 #He #abc#def in#line #x#y#z# #twitter #G12 *#?!")
