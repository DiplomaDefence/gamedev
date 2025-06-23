function scr_load_data(){
		if file_exists("hardman.sav") file_delete("hardman.sav");
		var SaveFile = file_text_open_write("hardman.sav");
    var saveData = g
    
		var num;
		for (num = 0; num <= 14; num++)
		{
			file_text_write_string(SaveFile, options[num]);
			file_text_writeln(SaveFile);
		}
		file_text_close(SaveFile);
}