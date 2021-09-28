class Api::V1::UploadController < ApplicationController
  def direct_post
    data = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: "201", acl: "public-read")
    render json: { url: data.url, fields: data.fields }, status: :ok
    # render json: data, status: :ok
  end
end
