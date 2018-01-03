class Course < ApplicationRecord
	before_save { self.tu_email = tu_email.downcase, self.in_email = in_email.downcase}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :course_title,            presence: true, length: { maximum: 255 }
	validates :originationg_department, presence: true, length: { maximum: 255 }
	validates :course_code,             presence: true, length: { maximum: 50  }
	validates :credit_value,            presence: true, length: { maximum: 2   }
	validates :course_type,             presence: true, length: { maximum: 255 }
	validates :semester,                presence: true, length: { maximum: 50  }
	validates :teaching_language,       presence: true, length: { maximum: 50  }
	validates :instructor,              presence: true, length: { maximum: 255 }
	validates :in_email,                presence: true, length: { maximum: 255 }, 
										format: { with: VALID_EMAIL_REGEX }
	validates :tutor,                   presence: true, length: { maximum: 255 }
	validates :tu_email,                presence: true, length: { maximum: 255 }, 
										format: { with: VALID_EMAIL_REGEX }
	validates :outline,                 presence: true, length: { maximum: 5000 }
end
