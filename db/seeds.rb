# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faculty.first_or_create([
  { faculty_name: '看護学部' },
  { faculty_name: '社会福祉学部' },
  { faculty_name: 'ソフトウェア情報学部' },
  { faculty_name: '総合政策学部' },
  { faculty_name: '盛岡短期大学部' },
  { faculty_name: '宮古短期大学部' }
])

Department.first_or_create([
  { faculty_id: 1, department_name: '看護学科' },
  { faculty_id: 2, department_name: '社会福祉学科' },
  { faculty_id: 2, department_name: '人間福祉学科' },
  { faculty_id: 3, department_name: 'ソフトウェア情報学科' },
  { faculty_id: 4, department_name: '総合政策学科' },
  { faculty_id: 5, department_name: '国際文化学科' },
  { faculty_id: 5, department_name: '生活科学学科' },
  { faculty_id: 6, department_name: '経営情報' }
])

