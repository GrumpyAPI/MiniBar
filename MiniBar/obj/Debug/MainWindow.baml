   M S B A M L   `   `   `  ����B  >MiniBar, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:MiniBarMiniBar  5   	       MiniBar.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:MiniBar     5   	   -   5          � Title$  MiniBar��5   	   $	��112��6   $	��600��6&    � WindowStartupLocation$ Manual=�6H    � AllowsTransparency .  � WindowStyle$
 None=�6�    � 
ResizeMode$ NoResize=�6�    � Topmost .  � Icon$! Bar/icons8-pull-down-96.png��6�   ��62   Z� .��5	      � .+�5
   
   �� .+�5      �� -   5         ��Name$ Upper_Panel��5      $��Bar/Upper Panel.png��6)   $
��Left=�6F   $	��112��6a   $	��Top=�6n   $	��600��6�   $��0,0,0,0q�6�    K� ZIndex$ 1��6�   6�   �� 5      -   5        $ Lower_Panel��5      $;��5Bar/Lower part with 50 percent transparency panel.png��6)   $
��Left=�6h   $��98��6�   $	��Top=�6�   $	��600��6�   $��	0,-68,0,0q�6�   �� 5      -   5        $ 
Bar_Button��5      $��Bar/Button.png��6(   $
��Left=�6@   $��19��6[   $	��Top=�6g   $��48��6   $��
276,12,0,0q�6�   6�   5      �� 5   
   -   5        	 ��Name$	 Options��5      $��!��6"   $��10��6.   $��10��6:   $	��Top=�6E   $��Right=�6]   $��0,2.667,4,0q�6y   $��6(�6�   $��Arial)�6�   $
��Bold"�6�   ���	#FF9B9B9B���	#FFFFCB00$��1��6  
 � 	Resources
 5       �� 
TargetType �� Property �� Value��%_   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 10��65   5      5       � ContextMenu 5      �� 5      .@�5      m� $��Menu item 1��6   m� 5      $��Menu item 2��6   �� 5      m� 5      -   5        $
��Exit��5       m� Icon 5      �� 5      $��Icons\Exit Icon.png��6$   5      5       5"      5#      5$      