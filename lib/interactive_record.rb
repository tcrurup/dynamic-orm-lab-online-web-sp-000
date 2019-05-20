  1) Student has instance methods to insert data into db #save saves the student to the db
     Failure/Error: expect(DB[:conn].execute("SELECT * FROM students WHERE name= 'Sam'")).to eq([{"id"=>1, "name"=>"Sam", "grade"=>11, 0=>1, 1=>"Sam", 2=>11}])

       expected: [{"id"=>1, "name"=>"Sam", "grade"=>11, 0=>1, 1=>"Sam", 2=>11}]
            got: [{"grade"=>11, "id"=>1, "name"=>"Sam"}]