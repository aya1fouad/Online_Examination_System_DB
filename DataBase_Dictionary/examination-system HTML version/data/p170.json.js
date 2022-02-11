window.repositoryObject = {"parameters_custom_fields":[],"object_id":"p170","name":"insertCourse (Insert a course)","subtype":"PROCEDURE","is_user_defined":false,"description":"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<head>\r\n\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>\r\n\t\t</title>\r\n\t\t<style type=\"text/css\">\r\n\t\t\t.cs2654AE3A{text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt}\r\n\t\t\t.cs416E45A4{color:#000000;background-color:transparent;font-family:'Segoe UI';font-size:10pt;font-weight:normal;font-style:normal;}\r\n\t\t\t.cs20F235EC{color:#000000;background-color:transparent;font-family:'Segoe UI';font-size:10pt;font-weight:bold;font-style:normal;}\r\n\t\t</style>\r\n\t</head>\r\n\t<body>\r\n\t\t<p class=\"cs2654AE3A\"><span class=\"cs416E45A4\">Stored procedure that is responsible for storing a record in the </span><span class=\"cs20F235EC\">Course </span><span class=\"cs416E45A4\">table</span></p><p class=\"cs2654AE3A\"><span class=\"cs416E45A4\">&nbsp;</span></p></body>\r\n</html>\r\n","summary":[{"field":"Documentation","value":{"_type":"link","name":"Examination System","id":"d4"}},{"field":"Schema","value":"dbo"},{"field":"Name","value":"insertCourse"},{"field":"Type","value":"Procedure"},{"field":"Title","value":"Insert a course"},{"field":"Status","value":{"value":"Active","type":"LIST_CLOSED","_type":"custom_field"}}],"script":null,"parameters":[{"name":"Course_Id","description":"Course's ID","mode":"IN","data_type":"int","custom_fields":{}},{"name":"Course_Name","description":"Course's name","mode":"IN","data_type":"varchar(50)","custom_fields":{}},{"name":"Instructor_ID","description":"Course's Instructor","mode":"IN","data_type":"int","custom_fields":{}}],"dependencies":{"uses":[{"object_name":"insertCourse (Insert a course)","object_name_show_schema":"dbo.insertCourse (Insert a course)","object_type":"PROCEDURE","object_id":"p170","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[{"object_name":"Course (Table of Courses)","object_name_show_schema":"dbo.Course (Table of Courses)","object_type":"TABLE","object_id":"t3695","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[]}]}],"used_by":[]},"imported_at":"2021-01-19 18:45"};