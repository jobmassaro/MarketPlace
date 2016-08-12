class Content < ActiveRecord::Base
	 extend FriendlyId

 	friendly_id :titolo, :use => :slugged

	belongs_to :user
	has_many :sales
	
	has_attached_file :cover
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    

	has_attached_file :allegato
 	validates_attachment_content_type :allegato, :content_type => [/^image\/(png|gif|jpeg)/,'application/msword','application/vnd.openxmlformats-officedocument.wordprocessingml.document','application/mspowerpoint','application/vnd.ms-powerpoint','application/vnd.openxmlformats-officedocument.presentationml.presentation','application/pdf', 'application/msexcel','application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','audio/mpeg','audio/mp3'],
 	message: "Formato non supportato"


 #	has_attached_file :allegato, :styles => { :small => "150x150>" },
  #                :url  => "/assets/products/:id/:style/:basename.:extension",
  #                :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

#	validates_attachment_presence :allegato
#	validates_attachment_size :allegato, :less_than => 55.megabytes
#	validates_attachment_content_type :allegato, :content_type => ['image/jpeg', 'image/png']


    validates :titolo, :descrizione, :price, presence: true
	validates :price , numericality: {greater_than: 0.49}
	validates :cover, attachment_presence: true
	validates :allegato, attachment_presence: true



end