require "minitest/autorun"
require_relative "console_human.rb"


class TestConsoleHuman < Minitest::Test

    def test_create_human
        player = Human.new("X")
        assert_equal("X", player.marker)
    end

    def test_make_a_move
        player = Human.new("X")
        move = player.get_move(Array.new(9, ""))
        assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(move))
    end

    def test_invalid_out_of_range
        player = Human.new("X")
        move = player.get_move(Array.new(["X","O","X","O","X","O","X","O","X"]))
        assert_equal(false, [0,1,2,3,4,5,6,7,8].include?(move))
    end  
end