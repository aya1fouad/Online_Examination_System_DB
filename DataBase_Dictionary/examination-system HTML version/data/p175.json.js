window.repositoryObject = {"parameters_custom_fields":[],"object_id":"p175","name":"insertExam (Insert an exam)","subtype":"PROCEDURE","is_user_defined":false,"description":"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\t<head>\r\n\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /><title>\r\n\t\t</title>\r\n\t\t<style type=\"text/css\">\r\n\t\t\t.cs2654AE3A{text-align:left;text-indent:0pt;margin:0pt 0pt 0pt 0pt}\r\n\t\t\t.cs416E45A4{color:#000000;background-color:transparent;font-family:'Segoe UI';font-size:10pt;font-weight:normal;font-style:normal;}\r\n\t\t\t.cs20F235EC{color:#000000;background-color:transparent;font-family:'Segoe UI';font-size:10pt;font-weight:bold;font-style:normal;}\r\n\t\t</style>\r\n\t</head>\r\n\t<body>\r\n\t\t<p class=\"cs2654AE3A\"><span class=\"cs416E45A4\">Stored procedure that is responsible for storing a record in the </span><span class=\"cs20F235EC\">Exam </span><span class=\"cs416E45A4\">table</span></p><p class=\"cs2654AE3A\"><span class=\"cs416E45A4\">&nbsp;</span></p></body>\r\n</html>\r\n","summary":[{"field":"Documentation","value":{"_type":"link","name":"Examination System","id":"d4"}},{"field":"Schema","value":"dbo"},{"field":"Name","value":"insertExam"},{"field":"Type","value":"Procedure"},{"field":"Title","value":"Insert an exam"},{"field":"Status","value":{"value":"Active","type":"LIST_CLOSED","_type":"custom_field"}}],"script":null,"parameters":[{"name":"ExamID","description":"Exam ID","mode":"IN","data_type":"int","custom_fields":{}},{"name":"ExamTitle","description":"Exam title","mode":"IN","data_type":"varchar(20)","custom_fields":{}},{"name":"Duration","description":"Exam duration","mode":"IN","data_type":"float","custom_fields":{}},{"name":"date","description":"Date of data insertion","mode":"IN","data_type":"datetime","custom_fields":{}}],"dependencies":{"uses":[{"object_name":"insertExam (Insert an exam)","object_name_show_schema":"dbo.insertExam (Insert an exam)","object_type":"PROCEDURE","object_id":"p175","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[{"object_name":"Exam (Table of Exams)","object_name_show_schema":"dbo.Exam (Table of Exams)","object_type":"TABLE","object_id":"t3700","type":"NORMAL","object_user_defined":false,"user_defined":false,"children":[]}]}],"used_by":[]},"imported_at":"2021-01-19 18:45"};