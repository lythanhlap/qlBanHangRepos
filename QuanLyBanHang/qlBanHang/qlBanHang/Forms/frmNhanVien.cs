using qlBanHang.Class;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace qlBanHang.Forms
{
    public partial class frmNhanVien : Form
    {
        DataTable dtNV;
        public frmNhanVien()
        {
            InitializeComponent();
        }

        public void LoadDataGridView()
        {
            string sql;
            sql = "SELECT * FROM NhanVien";
            dtNV = Functions.GetDataToTable(sql); //lấy dữ liệu
            dgvNhanVien.DataSource = dtNV;
            dgvNhanVien.Columns[0].HeaderText = "Mã nhân viên";
            dgvNhanVien.Columns[1].HeaderText = "Tên nhân viên";
            dgvNhanVien.Columns[2].HeaderText = "Ngày sinh";
            dgvNhanVien.Columns[3].HeaderText = "Giới tính";
            dgvNhanVien.Columns[4].HeaderText = "Địa chỉ";
            dgvNhanVien.Columns[5].HeaderText = "Điện thoại";

            dgvNhanVien.AllowUserToAddRows = false;
            dgvNhanVien.EditMode = DataGridViewEditMode.EditProgrammatically;
        }
        private void frmNhanVien_Load(object sender, EventArgs e)
        {
            txtMaNhanVien.Enabled = false; ;
            btnLuu.Enabled = false;
            btnBoQua.Enabled = false;
            LoadDataGridView();
        }

        private void dgvNhanVien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaNhanVien.Text = dgvNhanVien.CurrentRow.Cells["MaNV"].Value.ToString();
            txtTenNhanVien.Text = dgvNhanVien.CurrentRow.Cells["TenNV"].Value.ToString();

            if (dgvNhanVien.CurrentRow.Cells["GioiTinh"].Value.ToString().Trim() == "Nam")
                radioBtnNam.Checked = true;
            else radioBtnNu.Checked = true;

            txtDiaChi.Text = dgvNhanVien.CurrentRow.Cells["DiaChi"].Value.ToString();
            txtSDT.Text = dgvNhanVien.CurrentRow.Cells["SDT"].Value.ToString();
            dtpNgaySinh.Text = dgvNhanVien.CurrentRow.Cells["NgaySinh"].Value.ToString();

        }

        private void btnDong_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Xác nhận đóng?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Close();
            }
        }
    }
}
