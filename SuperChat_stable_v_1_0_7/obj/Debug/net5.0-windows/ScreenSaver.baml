   M S B A M L   `   `   `  ����D  @SuperChat, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SuperChat	SuperChat  5   	   C&clr-namespace:SuperChat.MVVM.ViewModelSuperChat.MVVM.ViewModel  6/       SuperChat.ScreenSaver   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SuperChat     5   	   <	viewmodel&clr-namespace:SuperChat.MVVM.ViewModel     6/   ���#36393f  � WindowStyle$
  None=�5	   	    � AllowsTransparency$
 True��5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ ScreenSaver��5   	   $	��600��6   $	��400��6*    � DataContext 5      3  -SuperChat.MVVM.ViewModel.ScreenSaverViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��25 �6   �� 5      $	��38* �6   �� 5      $	��62* �6   .+�5   
   �� -   5        ���#252525._�5      � $��Stretch=�6   .+�5       �� $��
Super Chat��6   
�������$��SemiBold"�5"      �� 5$      $��Right=�6    �� Orientation$ 
Horizontal=�5%      .+�5'      �� $��v. 1.0.7��6   $��0 0 10 0q�5(      
�������$��SemiBold"�5*      �� 5,      -   5        $��20��5,      $��20��5-      $��_��5.      
������ $��0q�50      
�������$
��Bold"�52      $��0 0 0 3q�53      54      �� 56      -   5        $��20��56      $��20��57      $	��✕��58      
������ $��0q�5:      
�������$
��Bold"�5<      5=      5?      5@      5A      � 5C   
   $��1��6   .+�5D      �� $��
Super Chat��6   $
��Wrap=�5E      $��50(�5F      
�������$
��Bold"�5H      $��Center=�5I      $��Center=�5J      5K      � 5M   
   $��2��6    � ColumnDefinitions 5N      �� 5O      $	��19* �6#   �� 5P      $	��62* �6#   �� 5Q      $	��19* �6#   .+�5T      � $��1��6    5U      �� 5V      $	��38* �6$   �� 5W      $	��62* �6$   .+�5Z      �� $��0��6   .+�5[      �� -   5        	 ��Name$	 UserName��5[      $��1��5\      $��30��5]         LoginBox#��[  5^      $��2��5_      �� 5a      $E��?Запомнить (не работает в Alfa версии)��6   $��0 1 0 0q�5b      
�������$
��Bold"�5d      5g      �� 5i      $��1��6   $��Center=�6*   .+�5k      �� $��creator: Ilya Zheman��6   $��Center=�5l      
�������$
��Bold"�5n      �� 5p      $C��=Teacher: Халюкин Владимир Васильевич��6   $��Center=�5q      
�������$
��Bold"�5s      �� 5u      $.��(Creation period: 01.09.2021 - 27.11.2021��6   $��Center=�5v      
�������$
��Bold"�5x      �� 5z      $��Organization: RSSU��6   $��Center=�5{      
�������$
��Bold"�5}      �� 5      $*��$Call-center RSSU: +7 (495) 255-67-67��6   $��Center=�5�      
�������$
��Bold"�5�      �� 5�      $9��3Address: ул. Вильгельма Пика, д. 4��6   $��Center=�5�      
�������$
��Bold"�5�      5�      5�      5�      5�      5�      