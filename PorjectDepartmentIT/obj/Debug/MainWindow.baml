   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   g cMicrosoft.ReportViewer.WinForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3atSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms 5   	   N JPorjectDepartmentIT, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:PorjectDepartmentITPorjectDepartmentIT 5
   	   $   PorjectDepartmentIT.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5   	   3local!clr-namespace:PorjectDepartmentIT     5
   	   -   5          � WindowStyle$
  None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � 
ResizeMode$ NoResize=�5   	    � Title$ 
MainWindow��5   	   $��918.456��6   $��1591.084��6-   ���	#FFEDF0F5.��5      � $��0,0,-6,0q�6    J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 5Q�6      	Direction$	 -90Q�6.      Opacity$ 50Q�6>      RenderingBias$ Quality=�6K   	   ShadowDepth$	 1Q�6c   .+�5    
   &   System.Windows.Controls.DataGrid  -   5        
  Name$
 
myDataGrid��5       $
��Left=�6'   $��
666,25,0,0q�6B   $	��Top=�6V   $	��512��6n   $	��569��6{   
���������5!      �� 5"       �� Color$ 	#FF527291��6"    �� Opacity$ 0Q�64   5$      �� 5(   
   $
��Left=�6   $	��512��60   $��
366,25,0,0q�6=   $	��Top=�6Q   $	��254��6i   
�������.+�5)      �� -   5         ��Name$ comboBox��5)      $
��Left=�5*      $��	50,20,0,0q�6.   $	��Top=�5+      $	��160��6+    �� SelectedIndex$ 0��5,      ���	#FF3086D5$��1q�6=   
�������.@�5-      �� �� 6   $�Выберете БД:��6!   68   �� 5.      �� 6   $�	Employees��6!   65   �� 5/      �� 6   $	�PPC��6!   6/   �� 50      �� 6   $�SubDivision��6!   67   �� 51      �� 6   $�Order��6!   61   �� 52      �� 6   $�Staff��6!   61   53      �� 54       �� Orientation$ 
Horizontal=�6   .+�55      �� -   5         ��Name$ add_btn��55      $	��ADD��6*   #��[" �68   $
��Left=�56      $��	50,20,0,0q�64   $	��Top=�6G   $��75��6_   ���	#FF3086D5
�������57   C   �� 58      -   5        $ 
update_btn��58      $��UPDATE��6-   #��[" �6>   $
��Left=�59      $��	10,20,0,0q�64   $	��Top=�6G   $��75��6_   ���	#FF3086D5
�������5:   C   5;      �� 5<      $ 
Horizontal=�6   .+�5=      �� -   5        $ 
delete_btn��5=      $��DELETE��6-   #��[" �6>   $
��Left=�5>      $��	50,10,0,0q�64   $	��Top=�6G   $��75��6_   ���	#FF3086D5
�������5?   C   �� 5@      -   5        $ 	Reset_btn��5@      $��RESET��6,   #��[" �6<   $
��Left=�5A      $��	10,10,0,0q�64   $	��Top=�6G   $��75��6_   ���	#FF3086D5
�������5B   C   5C      �� 5D      -   5         ��Name$ lbl_attention��5D      $��	Attention��6+   $
��Left=�6?   $��	30,20,0,0q�6Z   $	��Top=�6m   ���	#FFE13B526�   �� 5F      -	   5        $ 
lbl_Colum1��5F      $��Colum1��6(   $
��Left=�69   $��50,5,0,0q�6T   $	��Top=�6f   ���	#FF6A6C6F6~   �� 5G      -
   5         ��Name$ 	tb_Colum1��5G      $
��Left=�6)   $��23��6D   $��50,5,0,0q�6P    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6   $	��120��6�   �� 5I      -   5        $ 
lbl_Colum2��5I      $��Colum2��6(   $
��Left=�69   $��50,5,0,0q�6T   $	��Top=�6f   ���	#FF6A6C6F6~   �� 5J      -   5        $ 	tb_Colum2��5J      $
��Left=�6)   $��23��6D   $��50,5,0,0q�6P   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5L      -   5        $ 
lbl_Colum3��5L      $��Colum3��6(   $
��Left=�69   $��50,5,0,0q�6T   $	��Top=�6f   ���	#FF6A6C6F6~   �� 5M      -   5        $ 	tb_Colum3��5M      $
��Left=�6)   $��23��6D   $��50,5,0,0q�6P   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5O      -   5        $ 
lbl_Colum4��5O      $��Colum4��6(   $
��Left=�69   $��50,5,0,0q�6T   $	��Top=�6f   ���	#FF6A6C6F6~   �� 5P      -   5        $ 	tb_Colum4��5P      $
��Left=�6)   $��23��6D   $��50,5,0,0q�6P   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5R      -   5        $ 
lbl_Colum5��5R      $��Colum5��6(   $
��Left=�69   $��50,5,0,0q�6T   $	��Top=�6f   ���	#FF6A6C6F6~   �� 5S      -   5        $ 	tb_Colum5��5S      $
��Left=�6)   $��23��6D   $��50,5,0,0q�6P   $
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��120��6�   �� 5U      $ 
Horizontal=�6   �� 5V      $ 
Horizontal=�6   �� 5W      $ 
Horizontal=�6   �� 5X      $ 
Horizontal=�6   �� 5Y      $ 
Horizontal=�6   5Z      �� 5^   
   -   5         ��Name$ 
user_Panel��5^      $
��Left=�6)   $	��514��6D   $��1266,23,0,0q�6Q   $	��Top=�6f   $	��259��6~   
�������.+�5`      �� -   5         ��Name$ 	textBlock��5`      $��
10 10 0 15q�6+   $
��Left=�6@   $
��Wrap=�6[   $\��VЗаполнение заявки на техническое обслуживание��6o   $	��Top=�6�   $
��Bold"�6�   ���	#FF6A6C6F6�   �� 5a      -   5        $ u_lbl_Colum1��5a      $��10 0 0 0q�6*   $I��CРегистрационный номер пользователя:��6=   $
��Left=�6k   $	��Top=�6�   ���	#FF6A6C6F6�   �� 5b      -   5        $ u_tb_Colum1��5b      $��	10 0 0 15q�6+   $
��Left=�6?   $��23��6Z   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��120��6�   �� 5c      -   5        $ u_lbl_Colum2��5c      $��10 0 0 0q�6*   $E��?Регистрационный номер компьютера:��6=   $
��Left=�6i   $	��Top=�6�   ���	#FF6A6C6F6�   �� 5d      -   5        $ u_tb_Colum2��5d      $��	10 0 0 15q�6+   $
��Left=�6?   $��23��6Z   $
 Wrap=�6f   $�� ��6z   $	��Top=�6�   $	��120��6�   �� 5e      -   5        $ u_lbl_Colum3��5e      $��10 0 0 0q�6*   $(��"Описание проблемы:��6=   $
��Left=�6Z   $	��Top=�6u   ���	#FF6A6C6F6�   �� 5f      -   5        $ u_tb_Colum3��5f      $��10 0 0 0q�6+   $
��Left=�6>   $	��131��6Y   $
 Wrap=�6f   $
��Auto=�6z   $�� ��6�   $	��Top=�6�   $	��228��6�   �� 5g      -   5        $ lbl_attention_user��5g      $��10 0 0 0q�60   $��	Attention��6C   $
��Left=�6W   $	��Top=�6r   ���	#FFE13B526�   �� 5i      $ 
Horizontal=�6   .+�5j      �� -   5        $ 	u_add_btn��5j      $��50 115 10 0 q�6,   $	��ADD��6C   #��[" �6Q   $
��Left=�6�   $	��Top=�6�   $��75��6�   ���	#FF3086D5
�������6�   �� 5k      -   5        $ u_reset_btn��5k      $��5 115 10 0 q�6.   $��RESET��6D   #��[" �6T   $
��Left=�6�   $	��Top=�6�   $��75��6�   ���	#FF3086D5
�������6�   5l      5n      �� 5q   
   $
��Left=�6   $��36��6/   $��	0,881,0,0q�6;   $	��Top=�6N   $
��1591��6f   ��5r      �� 5s      $ 	#FFF02A2A��6"   $ 0Q�64   ��5u      �� 5v      $ 	#FF3086D5��6"   5x      �� 5z   
   -   5        $ lbl_name_user��5z      $��Login��6'   $
��Left=�67   $��982,881,0,0q�6R   $	��Top=�6g   
�������6   �� 5{   
   -   5        $ lbl_Welcome��5{      $��Welcome��6%   $
��Left=�67   $��879,881,0,0q�6R   $	��Top=�6g   
�������6   �� 5}   
   -    5        $ tb_id��5}      $
��Left=�6!   $��23��6<   $��634,514,0,0q�6H   $
 Wrap=�6]   $�� ��6q   $	��Top=�6y   $��28��6�   {�.  
�������6�   �� 5~   
   -!   5        $ lbl_connection��5~      $��
Connection��6(   $
��Left=�6=   $��
30,881,0,0q�6X   $	��Top=�6l   
�������6�   7  1System.Windows.Forms.Integration.WindowsFormsHost  5�   
   $
��Left=�6   $	��233��66   $��1657,436,-603,0q�6C   $	��Top=�6\   $	��543��6t      Child. 5�      /  )Microsoft.Reporting.WinForms.ReportViewer  -"   5        _reportViewer1��5�      5�        5�   
   $
��Left=�6   $	��203��66   $��862,628,0,0q�6C   $	��Top=�6X   $	��678��6p   . 5�        -#   5        _reportViewer2��5�      5�      �� 5�   
   $
��Left=�6   $	��233��60   $��366,598,0,0q�6=   $	��Top=�6R   $	��400��6j   
�������.+�5�        $
��Left=�6    $	��233��6;   $	��Top=�6H   $	��400��6`      
Background �	#FF9CC8DC. 5�        -$   5        _reportViewer��[ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089&   System.Windows.Forms.UserControl   AutoSize .     BorderStyle$
 None=�5�   J      ShowBackButton .     ShowContextMenu .     ShowCredentialPrompts .     ShowDocumentMapButton .     ShowExportButton .     ShowFindControls .  !    ShowPageNavigationControls  .  !   ShowParameterPrompts! .  "   ShowPrintButton" .  #   ShowProgress# .  $   ShowPromptAreaButton$ .  %   ShowRefreshButton% .  &   ShowStopButton& .  '   ShowToolBar' .  (   ShowZoomControl( .  )   AutoSizeMode$) GrowAndShrink=�6�  "  System.Windows.Forms.Control*   MaximumSizeU	 QSystem.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" 	 System.Drawing.SizeConverter$
* 0, 0 6�  ,  &System.Windows.Forms.ScrollableControl+   
AutoScroll+ .  ,   	BackColor#	 	 System.Drawing.ColorConverter$, White	 6$  5�      5�      �� 5�   
   -%   5        $ txt_fromData��5�      $
��Left=�6+   $��847,585,0,0q�6F   $
��Wrap=�6[   $��	From date��6o   $	��Top=�6�   (
  "System.Windows.Controls.DatePicker
  5�   
   -&   5        - 
 Name$- DatePicker2��5�      $
��Left=�6*   
. �� Now/ 
  SelectedDate#/ Z. 6E   $��1184,582,0,0q�6p   $	��Top=�6�   $	��158��6�   
  5�   
   -'   5        $- DatePicker1��5�      $
��Left=�6*   $��930,581,0,0q�6E   $	��Top=�6Z   $	��158��6r   �� 5�   
   -(   5        $ 
txt_toData��5�      $
��Left=�6)   $��1114,585,0,0q�6D   $
��Wrap=�6Z   $��To date��6n   $	��Top=�6}   �� 5�   
   -)   5        $ btn_dataPick��5�      $��OK��6'   $
��Left=�64   $��1370,582,0,0q�6O   $	��Top=�6e   $��75��6}   6�   �� 5�   
   -*   5        $ txt_triggerStatus��5�      $
��Left=�6-   $��23��6H   $��930,553,0,0q�6T   $
 Wrap=�6i   $�� ��6}   $	��Top=�6�   $	��158��6�   �� 5�   
   -+   5        $ button��5�      $	��DEL��6!   $
��Left=�6/   $��1465,583,0,0q�6J   $	��Top=�6`   $��75��6x   6�   5�      5�      