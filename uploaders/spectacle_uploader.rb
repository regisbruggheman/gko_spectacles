class SpectacleUploader < CarrierWave::Uploader::Base

    include CarrierWaveDirect::Uploader
    include CarrierWave::MimeTypes
   
    def will_include_content_type
        true
    end

    default_content_type  'application/pdf'
    allowed_content_types = %w(application/pdf)

    def store_dir
        self.build_store_dir('uploads', 'spectacles', model.id)
    end

    def extension_white_list
        %w(pdf)
    end
end