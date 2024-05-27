/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!PasswordMenu.Wait && PasswordMenu.Exit)
	{
		x -= 2;
	}
	
	if (PasswordMenu.Wait || PasswordMenu.Exit) return;
	
	if (keyboard_check_pressed(ord(Text)))
	{
		PasswordMenu.Password += Text;	
	}
	