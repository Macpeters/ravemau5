var file, item, value;

if (file_exists("default.sav")){
   varfile = file_text_open_read("default.sav");
   file = file_text_open_write(argument0);

   while (!file_text_eof(varfile)){
        item = string_letters((file_text_read_string(varfile)));
        //value = variable_global_get(item);

        //if (item != "" && variable_global_exists(item)){
          // file_text_write_string(file, string(item) + " = " +string(round(value)));
        //}
        file_text_writeln(file);
        file_text_readln(varfile);
   }

   file_text_close(varfile);
   file_text_close(file);

  return(true);
} else {
      return(false);
}
