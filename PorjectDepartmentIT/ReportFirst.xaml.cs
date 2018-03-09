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
using System.Windows.Shapes;
using Microsoft.Reporting.WinForms;

namespace PorjectDepartmentIT
{
    /// <summary>
    /// Interaction logic for ReportFirst.xaml
    /// </summary>
    public partial class ReportFirst : Window
    {
        public ReportFirst()
        {
            InitializeComponent();
            _reportViewer.Load += ReportViewer_Load;
            
        }

        private bool _isReportViewerLoaded;

        private void ReportViewer_Load(object sender, EventArgs e)
        {
            if (!_isReportViewerLoaded)
            {
                Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
                DepartmentITDataSet dataset = new DepartmentITDataSet();

                dataset.BeginInit();

                reportDataSource1.Name = "DataSet1"; //Name of the report dataset in our .RDLC file
                reportDataSource1.Value = dataset.Tables;
                this._reportViewer.LocalReport.DataSources.Add(reportDataSource1);
                this._reportViewer.LocalReport.ReportEmbeddedResource = "PorjectDepartmentIT.Report1.rdlc";

                dataset.EndInit();

                //fill data into adventureWorksDataSet
                DepartmentITDataSetTableAdapters.PPCTableAdapter PPCTableAdapter = new DepartmentITDataSetTableAdapters.PPCTableAdapter();
                PPCTableAdapter.ClearBeforeFill = true;
                PPCTableAdapter.Fill(dataset.PPC);

                _reportViewer.RefreshReport();

            _isReportViewerLoaded = true;
            }
        }
    }
}
