   M S B A M L   `   `   `  ����C  ?DouyuWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DouyuWPF.EntityDouyuWPF.Entity  5   	   #clr-namespace:DouyuWPFDouyuWPF  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	   3clr-namespace:DouyuWPF.HelpersDouyuWPF.Helpers  5	   	       DouyuWPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /Modelclr-namespace:DouyuWPF.Entity     5   	   (localclr-namespace:DouyuWPF     5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5   	   2helpersclr-namespace:DouyuWPF.Helpers     5	   	   -   5          � Title$  
MainWindow��5   	   $	��800��6   $
��1200��6)    � WindowStyle$
 None=�66      WindowChromeKey'  !System.Windows.Shell.WindowChrome   WindowChrome# �   6f    � 	Resources 5         ResizeBorderThickness �� DataType   DouyuWPF.Entity.Room  Room �� Padding �� CornerRadius �� Triggers	 P� Property
 P� Value �� Property �� Value3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   Color   Opacity   	Direction.  (System.Windows.Interactivity.Interaction   Triggers/  )System.Windows.Interactivity.EventTrigger   	EventName.  (System.Windows.Interactivity.TriggerBase   Actions%   DouyuWPF.Helpers.EventToCommand   PassEventArgsToCommand   Command
 �� Top �� Left��%]  &	        &	 =       5   
    5      u�5      0q�6   5      �� 5   
   "  6   .R�5      �� 
���   �$��0q�6)   $ 0q�6=   $ 5��6I   
�������$��10,10,10,10q�6m   ��5      �� 5       5      P� 5      	 �@J�IsMouseOver
 . . �5   "   ��  �@J�Effect 5   &     5   *   $ 2Q�6;   $ #BBBBBB��6J   $	 0.3Q�5   7   $	 315Q�6E   5   #   5      5       ._�5"      �� $	��200��6   $	��150��6%    5#        5$      $ MouseLeftButtonDown��6)   . 5%         .  65   �� *ClickRoomToWebCommand+6_   5&      .+�5(      �� $	��200��64   $	��150��6@   $	��Top=�6M   $ 0��6e   ��6   �� *Icon+6e   �� 5)      
�������.+�5*      �� $��Images/watcher.png��6    $��12��6<   $��12��6G   $ 3��6S   $	 115��6c   �� 5+      $ 15��6;   $	 115��6L   $��12(�6]   
���   ���6$   �� *Count+6k   �� 5,      $ 2��6;   $	 130��6K   $��12(�6\   
���   ���6$   �� *Name+6j   5-      �� 5.      $��
0, 5, 0, 5q�6    5/      50      51      52      .��53      �  � RowDefinitions 54   
   �� 55      $��5* �6   �� 56      $	��50* �6   �� 57      $��* �6   .+�59   
   �� $��2q�6   $��0��6&   
���������5:      �� 5;      .��5<      �  � Offset$	 0.0Q�6#    � Color$ yellow��60   6A   � 5=      $	 0.4Q�6#   $	 red��60   6>   � 5>      $	 0.9Q�6#   $
 Pink��60   6?   5?      ._�5A      �� $
��auto��6   $	��Top=�6"   $��Stretch=�6:   .+�5B      �� $��Images/皮肤.png��6   $��30��6/   $��30��6:   $ 20��6F    �� Right$ 50��6V   �� 5C      $��Images/timg.png��6   $��50��61   $��50��6<   $ 10��6H   $ 10��6X   �� 5D      $��Images/机器猫.png��6   $ 19��60   $	 150��6@   $��32��6S   $��32��6^   �� 5E      $��	顾晨宇��6   $ 25��6(   $ 90��68   $��16(�6J   
����i��6o   5F      5G      �� 5H   
   -   5        $��TabControl1��5H      $��Stretch=�6(   $
��auto��6F   $��Stretch=�6T   $��1��6p   $��0q�6}   $��0 10 0 0q�6�   .@�5I      �� $��直播窗口��6   .��5J      �� $��Visible=�6   $��0q�6E   .��5K      �� -   5         ��Name$ itemsControl��5K   $   
�������#��[ 6R   ��6w   �� *
RoomList+ �� Mode$ OneWay=���5L      �� 5M      .R�5N   "   �  � Orientation$ 
Horizontal=�6,   $��0q�6E   5O      5Q      5R      5S      5T      � 5U   
   $��2��6   
�������.+�5V      �� $+��%测试版本(1.001) ©Microsoft Bruce��6   5W      5X      5Y      