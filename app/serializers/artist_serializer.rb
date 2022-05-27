class ArtistSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :age, :biography, :image_url
  #has_many :artists, through: :members     talvez adicionar isso depois

  def image_url
    if object.image.attached?
      rails_blob_path(object.image, only_path: true)
    end
  end
end
