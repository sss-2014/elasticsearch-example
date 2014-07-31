class Document < ActiveRecord::Base
  has_many :attachments

  def to_indexable
    {
      customer: details.customer,
      content: attachments.map { |a| a.pages.map(&:text) }.flatten.join(' ')
    }
  end
end
