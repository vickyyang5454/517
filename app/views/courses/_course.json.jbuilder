json.extract! course, :id, :course_num, :discipline, :name, :area, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
