require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @note = Note.new(
                      title: 'First note', 
                      body:  'This is the body of the first note. There is nothing much to look into it.', 
                      tags:  'First, Note, Test'
                      )
  end

  test "Note should be valid" do
    assert @note.valid?
  end

  test "Title should be present" do
    @note.title = ""
    assert_not @note.valid?
  end

  test "Body should be present" do
    @note.body = ""
    assert_not @note.valid?
  end
end
