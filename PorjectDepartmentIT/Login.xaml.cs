using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
using System.Windows.Shapes;

namespace PorjectDepartmentIT
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public Login()
        {
            InitializeComponent();

            lbl_attention.Visibility = Visibility.Hidden; // Изначально скрывает лейбел с ошибкой о вводе пароля
        }

        private void btn_input(object sender, RoutedEventArgs e) // Кнопка проверки введеных данных пользователя
        {
            string dataConect = @"Data Source=.\SQLEXPRESS;Initial Catalog=DepartmentIT; Integrated Security=true;";
            SqlConnection cn = new SqlConnection(dataConect);

            cn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Accounts WHERE [username] = '" + comboBox.Text + "' and [password] = '" + passwordBox.Password + "'", cn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            int count = 0;
            while (dr.Read())
            {
                count += 1;
            }

            if (count == 1)
            {
                this.Close(); // Если логин и пароль введены правильно, форма закрывается
            }

            else
            {
                lbl_attention.Visibility = Visibility.Visible; // Если логи или пароль введен не правильно, появляется лейбел с ошибкой
                lbl_attention.Content = "Вы ошиблись в пароле"; // Лейбел с ошибкой
            }
        }

        private void tb_password_TextChanged(object sender, TextChangedEventArgs e) // Срабатывает при изменении текста текст-бокса
        {
            lbl_attention.Visibility = Visibility.Hidden; // При изменения текста в текст-боксе, лейбел с надписью "Вы ошиблись в пароле" пропадает
        }

        private void comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e) // Срабатывает при изменении текста комба-бокса
        {
            lbl_attention.Visibility = Visibility.Hidden; // При изменения текста в комбо-боксе, лейбел с надписью "Вы ошиблись в пароле" пропадает
        }
    }
}
