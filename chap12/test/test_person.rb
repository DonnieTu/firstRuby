require 'minitest/autorun'

require 'list_with_commas'



class TestListWithCommas<Minitest::Test
    def setup
        @list=ListWithCommas.new
    end

    def test_it_join_three_words_with_commas
        @list.items=["My parents","a rodeo clown","a prize bull"]
        assert_equal @list.join, "My parents, a rodeo clown, and a prize bull"
    end

    def test_it_join_two_words_with_commas
        @list.items=['apple','orange']
        
        assert_equal 'apple and orange',@list.join
    end

    def test_it_join_one_word_with_commas
        @list.items=['apple']
        assert_equal 'apple',@list.join
    end
end