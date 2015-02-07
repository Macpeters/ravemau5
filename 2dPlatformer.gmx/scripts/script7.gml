var file, value, item;

if file_exists(argument0){
   file = file_text_open_read(argument0);

  while (!file_text_eof(file)){
      item = file_text_read_string(file);
      value = real(string_digits(item));
      if (item != ""){
        // variable_global_set(string_letters(item), value);
      } 
      file_text_readln(file);
  }
  file_text_close(file);
  return(true);
}else{
      return(false);
}
