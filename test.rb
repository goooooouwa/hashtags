require "./hashtag"
require "test/unit"

class TestGetHashtags < Test::Unit::TestCase
  def test
    assert_equal(get_hashtags("12"), [])
    assert_equal(get_hashtags("abc #a12"), ["a12"])
    assert_equal(get_hashtags("#a12 ###He"), ["a12", "He"])
    assert_equal(get_hashtags("#abc#def #x#y#z# #twitter"), ["twitter"])
    assert_equal(get_hashtags("in#line #twitter"), ["twitter"])
    assert_equal(get_hashtags("#G12 *#?!"), ["G12"])
    assert_equal(get_hashtags("abc #a!*?"), ["a!*?"])
  end
end
