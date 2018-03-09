using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace PorjectDepartmentIT
{
    public partial class MainWindow : Window
    {
        public static DataView dbconnection(IDbConnection connection, int index) // Чтение таблицы на основании connection и Index
        {
            string opentb = "";

            switch (index) // Выбираем таблицу
            {
                case 0:
                    opentb = "TestTb";
                    break;
                case 1:
                    opentb = "Employees";
                    break;
                case 2:
                    opentb = "PPC";
                    break;
                case 3:
                    opentb = "SubDivision";
                    break;
                case 4:
                    opentb = "Order";
                    break;
                case 5:
                    opentb = "Staff";
                    break;

                default:
                    MessageBox.Show("Цикл switch метод чтения, OpenDataBase.cs");
                    break;
            }

            connection.Close(); // Закравается подключение, дописать if на проверку закрытого подключения

            IDbCommand command = new SqlCommand("SELECT * FROM [" + opentb + "]"); // Создаем запрос в БД

            command.Connection = connection; // Получает данные о соеденении


            connection.Open(); // Открываем соеденение

            IDataReader reader = command.ExecuteReader(); // Исполняем команду SELECT и читаем полученную информацию из БД

            DataTable dt = new DataTable(); // Создаем экземплят таблицы в куче(динамическая память)
            dt.Load(reader); // Загружаем в таблицу считанную информацию reader из БД    
            reader.Close(); // Закрываем reader

            return dt.DefaultView; // Передает из БД полученную информацию в DataGrid и выводит в приложении

        }

        public static DataView adddb(IDbConnection connection, int index, string var_Colum1, string var_Colum2, string var_Colum3, string var_Colum4, string var_Colum5) // Добавления записи в базу данных
        {

            string opentb = "";
            string query = ""; // создаем переменную для хранения запроса, передаваемого в базу данных
                               // в цикле switch в query будет храниться запрос под каждую отдельную таблицу
                               // после чего переменную query передаем в конструктор  new SqlCommand(query);

            switch (index) // Выбираем таблицу
            {
                case 0:
                    opentb = "TestTb";
                    query = ("INSERT INTO " + opentb + " (Name, Surname) VALUES (@Colum1, @Colum2)");
                    break;
                case 1:
                    opentb = "Employees";
                    query = ("INSERT INTO " + opentb + " (Name, Surname, Patronymic, Position) VALUES (@Colum1, @Colum2, @Colum3, @Colum4)");
                    break;
                case 2:
                    opentb = "PPC";
                    query = ("INSERT INTO " + opentb + " (RegNumber, PcInformation, Model, PcParameters, Location) VALUES (@Colum1, @Colum2, @Colum3, @Colum4, @Colum5)");
                    break;
                case 3:
                    opentb = "SubDivision";
                    query = ("INSERT INTO " + opentb + " (NameSD, Housing, Phone) VALUES (@Colum1, @Colum2, @Colum3)");
                    break;
                case 4:
                    opentb = "Order";
                    break;
                case 5:
                    opentb = "Staff";
                    query = ("INSERT INTO " + opentb + " (Name, Surname, Patronymic, Position) VALUES (@Colum1, @Colum2, @Colum3, @Colum4)");
                    break;

                default:
                    MessageBox.Show("Цикл switch метод вставки, OpenDataBase.cs");
                    break;
            }

            connection.Close(); // Закравается подключение

            IDbCommand command = new SqlCommand(query); // Создается запрос в БД и в зависимости от выбранной таблицы в comboBox ей присваевается запрос из функции switch

            // Создается параметр, который передает переменным значения из comboBox
            command.Parameters.Add(new SqlParameter("Colum1", var_Colum1));
            command.Parameters.Add(new SqlParameter("Colum2", var_Colum2));
            command.Parameters.Add(new SqlParameter("Colum3", var_Colum3));
            command.Parameters.Add(new SqlParameter("Colum4", var_Colum4));
            command.Parameters.Add(new SqlParameter("Colum5", var_Colum5));


            command.Connection = connection; // Получает данные о соеденении

            connection.Open();// Открывается подключение

            command.ExecuteReader(); // Читаем полученную информацию из БД

            DataView select = dbconnection(connection, index);  // ???
            return select; // ???

        }

        public static DataView us_adddb(IDbConnection connection, int index, string var_us_Colum1, string var_us_Colum2, string var_us_Colum3) // Добавления записи в базу данных
        {

            connection.Close(); // Закравается подключение

            IDbCommand command = new SqlCommand("INSERT INTO [Order] (RegNumUcer, RegNumPC, Description) VALUES (@us_Colum1, @us_Colum2, @us_Colum3) ");

            // Создается параметр, который передает переменным значения из comboBox
            command.Parameters.Add(new SqlParameter("us_Colum1", var_us_Colum1));
            command.Parameters.Add(new SqlParameter("us_Colum2", var_us_Colum2));
            command.Parameters.Add(new SqlParameter("us_Colum3", var_us_Colum3));


            command.Connection = connection; // Получает данные о соеденении

            connection.Open();// Открывается подключение

            command.ExecuteReader(); // Читаем полученную информацию из БД

            DataView select = dbconnection(connection, index);  // ???
            return select; // ???

        }

        public static DataView updatedb(IDbConnection connection, int index, string var_Colum0, string var_Colum1, string var_Colum2, string var_Colum3, string var_Colum4, string var_Colum5) // Обновление записи в базе данных
        {
            string updb = "";
            switch (index)
            {
                case 0: // TestTb
                    break;
                case 1: // Employees
                    updb = ("UPDATE [Employees] SET [Name]=@Colum1, [Surname]=@Colum2, [Patronymic]=@Colum3, [Position]=@Colum4 WHERE [IdEmp] = @Colum0");
                    break;
                case 2: // PPC
                    updb = ("UPDATE [PPC] SET [RegNumber]=@Colum1, [PcInformation]=@Colum2, [Model]=@Colum3, [PcParameters]=@Colum4, [Location]=@Colum5 WHERE [PPCId] = @Colum0");
                    break;
                case 3: // SubDivision
                    updb = ("UPDATE [SubDivision] SET [NameSD]=@Colum1, [Housing]=@Colum2, [Phone]=@Colum3 WHERE [SDId] = @Colum0");
                    break;
                case 4: // Order
                    updb = ("UPDATE [Order] SET [Status]=@Colum1, [Staff]=@Colum2 WHERE [OrderID] = @Colum0");
                    break;
                case 5: // Staff
                    updb = ("UPDATE [Staff] SET [Name]=@Colum1, [Surname]=@Colum2, [Patronymic]=@Colum3, [Position]=@Colum4 WHERE [SfID] = @Colum0");
                    break;

                default:
                    MessageBox.Show("Цикл switch метод обновления, OpenDataBase.cs");
                    break;
            }

            connection.Close(); // Закравается подключение

            IDbCommand command = new SqlCommand(updb); // Создается запрос в БД и в зависимости от выбранной таблицы в comboBox ей присваевается запрос из функции switch

            // Создается параметр, который передает переменным значения из comboBox
            command.Parameters.Add(new SqlParameter("Colum0", var_Colum0)); // Id
            command.Parameters.Add(new SqlParameter("Colum1", var_Colum1));
            command.Parameters.Add(new SqlParameter("Colum2", var_Colum2));
            command.Parameters.Add(new SqlParameter("Colum3", var_Colum3));
            command.Parameters.Add(new SqlParameter("Colum4", var_Colum4));
            command.Parameters.Add(new SqlParameter("Colum5", var_Colum5));


            command.Connection = connection; // Получает данные о соеденении
            connection.Open();// Открывается подключение
            command.ExecuteReader(); // Читаем полученную информацию из БД

            DataView select = dbconnection(connection, index);  // ???
            return select;
        }

        public static DataView deletedb(IDbConnection connection, int index, string var_Colum0) // Удаления записи из базы данных 
        {
            string deldb = "";
            switch (index)
            {
                case 0: // TestTb
                    break;
                case 1: // Employees
                    deldb = ("DELETE FROM [Employees] WHERE [IdEmp] = @Colum0");
                    break;
                case 2: // PPC
                    deldb = ("DELETE FROM [PPC] WHERE [PPCId] = @Colum0");
                    break;
                case 3: // SubDivision
                    deldb = ("DELETE FROM [SubDivision] WHERE [SDId] = @Colum0");
                    break;
                case 4: // Order
                    break;
                case 5: // Staff
                    deldb = ("DELETE FROM [Staff] WHERE [SfID] = @Colum0");
                    break;

                default:
                    MessageBox.Show("Цикл switch метод удаления, OpenDataBase.cs");
                    break;
            }

            connection.Close(); // Закравается подключение

            IDbCommand command = new SqlCommand(deldb); // Создается запрос в БД и в зависимости от выбранной таблицы в comboBox ей присваевается запрос из функции switch

            // Создается параметр, который передает переменным значения из comboBox
            command.Parameters.Add(new SqlParameter("Colum0", var_Colum0)); // Id

            command.Connection = connection; // Получает данные о соеденении
            connection.Open();// Открывается подключение
            command.ExecuteNonQuery(); // Читаем полученную информацию из БД

            DataView select = dbconnection(connection, index);  // ???
            return select;
        }
    }
}

