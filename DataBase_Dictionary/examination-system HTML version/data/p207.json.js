window.repositoryObject = {"parameters_custom_fields":[],"object_id":"p207","name":"NCourse_NumStud","subtype":"PROCEDURE","is_user_defined":false,"description":null,"summary":[{"field":"Documentation","value":{"_type":"link","name":"Examination System","id":"d4"}},{"field":"Schema","value":"dbo"},{"field":"Name","value":"NCourse_NumStud"},{"field":"Type","value":"Procedure"}],"script":"--stud_grade 3\r\n--------------------------------------------------------\r\n--3\r\nCREATE Proc NCourse_NumStud @InstID int\r\nas\r\n\tSelect  c.CrsName as[course name] ,count(s.StudID) as[number of students]\r\n\tfrom Course c ,Stud_Course s\r\n\twhere  c.InstID=@InstID and c.CrsID=s.CourseID\r\n\tgroup by c.CrsName","parameters":[{"name":"InstID","description":"Instructor ID (Used for Reports)","mode":"IN","data_type":"int","custom_fields":{}}],"dependencies":{"uses":[{"object_name":"NCourse_NumStud","object_name_show_schema":"dbo.NCourse_NumStud","object_type":"PROCEDURE","object_id":"p207","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[{"object_name":"Course (Table of Courses)","object_name_show_schema":"dbo.Course (Table of Courses)","object_type":"TABLE","object_id":"t3695","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[]},{"object_name":"Stud_Course (Student & Course)","object_name_show_schema":"dbo.Stud_Course (Student & Course)","object_type":"TABLE","object_id":"t3708","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[]}]}],"used_by":[]},"imported_at":"2021-01-19 20:52"};