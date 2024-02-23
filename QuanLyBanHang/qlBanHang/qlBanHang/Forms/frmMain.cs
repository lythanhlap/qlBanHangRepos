using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace qlBanHang.Forms
{
    public partial class frmMain : Form
    {
        frmDangNhap dangNhap = new frmDangNhap();
        public frmMain()
        {
            InitializeComponent();
            this.dangNhap = dangNhap;
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }

        private void mnuThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Xác nhận thoát?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Class.Functions.Disconnect();   //Đóng kết nối
                this.Close();
            }
            dangNhap.Show();
        }
        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            dangNhap.Show();
        }

        private void mnuDangXuat_Click(object sender, EventArgs e)
        {
            this.Close();
            dangNhap.Show();
        }

        private void mnuNhaCungCap_Click(object sender, EventArgs e)
        {
            frmNhaCungCap ncc = new frmNhaCungCap();
            ncc.Show();
        }

        private void mnuKhachHang_Click(object sender, EventArgs e)
        {
            frmKhachHang kh = new frmKhachHang();
            kh.Show();
        }

        private void mnuNhanVien_Click(object sender, EventArgs e)
        {
            frmNhanVien nv = new frmNhanVien();
            nv.Show();
        }

        private void mnuSanPham_Click(object sender, EventArgs e)
        {
            frmSanPham sp = new frmSanPham();
            sp.Show();
        }

        private void mnuHoaDonBan_Click(object sender, EventArgs e)
        {
            frmHoaDon hd = new frmHoaDon();
            hd.Show();
        }

        private void mnuTimKiemHoaDon_Click(object sender, EventArgs e)
        {
            frmTimKiem tk = new frmTimKiem();
            tk.Show();
        }

        

        private void btnHoaDon_Click(object sender, EventArgs e)
        {
            frmHoaDon hd = new frmHoaDon();
            hd.Show();
        }

        private void btnSanPham_Click(object sender, EventArgs e)
        {
            frmSanPham sp = new frmSanPham();
            sp.Show();
        }

    }
}
