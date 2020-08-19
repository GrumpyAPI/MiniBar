using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Threading;

namespace MiniBar
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            double x = System.Windows.SystemParameters.PrimaryScreenWidth;
            double width = (x / 2) - 300;

            this.Top = 0;
            this.Left = width;
        }

        bool isUp = true;

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Bar_Button.Source = new BitmapImage(new Uri("pack://application:,,,/Bar/Button.png"));

            if (isUp)
            {
                PanelMoveDown();
            }
            else
            {
                PanelMoveUp();
            }
        }

        async void PanelMoveUp()
        {
            double y = 15;
            double x = 95;

            for (int i = 0; i < 83; i++)
            {
                await Task.Delay(10);
                y--;
                x--;
                Lower_Panel.Margin = new Thickness(0, y, 0, 0);
                Bar_Button.Margin = new Thickness(276, x, 0, 0);
            }

            isUp = true;
        }

        async void PanelMoveDown()
        {
            double y = -68;
            double x = 12;
            
            for (int i = 0; i < 83; i++)
            {
                await Task.Delay(10);
                y++;
                x++;
                Lower_Panel.Margin = new Thickness(0, y, 0, 0);
                Bar_Button.Margin = new Thickness(276, x, 0, 0);
            }

            isUp = false;
        }

        private void Button_Down(object sender, MouseButtonEventArgs e)
        {
            Bar_Button.Source = new BitmapImage(new Uri("pack://application:,,,/Bar/Button Press.png"));
        }

        private void Hover_On(object sender, MouseEventArgs e)
        {
            Bar_Button.Source = new BitmapImage(new Uri("pack://application:,,,/Bar/Button Hover.png"));
        }

        private void Hover_Off(object sender, MouseEventArgs e)
        {
            Bar_Button.Source = new BitmapImage(new Uri("pack://application:,,,/Bar/Button.png"));
        }

        private void Window_Move(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void Left_Click(object sender, RoutedEventArgs e)
        {
            Window_Loaded(sender, e);
        }

        private void Exit_App(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }


        //TODO: Add the option to add items to the panel.
    }
}
