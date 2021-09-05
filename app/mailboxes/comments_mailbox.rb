class CommentsMailbox < ApplicationMailbox
  before_processing :validatte_request

  def process
    board.comments.create!(body: mail.decoded, creator: commenter)
  end

  def validate_request
    return if commenter && board

    # bounce.with CommentMailer.invalid_request()
  end

  def commenter

  end
end


