class PerformanceSerializer < ActiveModel::Serializer
 include Rails.application.routes.url_helpers

  attributes :id, :title, :biography, :image_url

  def image_url
    if object.images.attached?
      object.images.map do |image|
        rails_blob_path(image, only_path: true)
      end
    end
  end
end
