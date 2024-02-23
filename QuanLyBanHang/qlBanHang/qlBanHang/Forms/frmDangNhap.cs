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
    public partial class frmDangNhap : Form
    {
        public frmDangNhap()
        {
            InitializeComponent();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Xác nhận thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Functions.Disconnect();       //Đóng kết nối
                Application.Exit();
            }
        }

        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            string sql;
            if (txtTenDangNhap.Text.Trim().Length == 0)
            {
                MessageBox.Show("Chưa nhập tên đăng nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTenDangNhap.Focus();
                return;
            }
            if (txtMatKhau.Text.Trim().Length == 0)
            {
                MessageBox.Show("Chưa nhập mật khẩu", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtMatKhau.Focus();
                return;
            }

            sql = "Select count(*) from TaiKhoan where TenDangNhap = '" + txtTenDangNhap.Text.Trim() + "' and MatKhau = '" + txtMatKhau.Text.Trim() + "'";
            if (Convert.ToInt32(Functions.GetFieldValues(sql)) == 1)
            {
                frmMain frmMain = new frmMain();
                frmMain.Show();
                this.Hide();
                txtTenDangNhap.Text = "";
                txtMatKhau.Text = "";
                txtTenDangNhap.Focus();
            }
            else
            {
                MessageBox.Show("Tài khoản không hợp lệ", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtTenDangNhap.Text = "";
                txtMatKhau.Text = "";
                txtTenDangNhap.Focus();
                return;
            }
        }

        private void frmDangNhap_Load(object sender, EventArgs e)
        {
            Functions.Connect();  //Mở kết nối
        }

        
        
    }
}
