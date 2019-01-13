using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GridView1.DataSource = from employee in dbContext.Employees
            //                       where employee.Gender == "Male"
            //                       orderby employee.Salary descending
            //                       select employee;

           
        }

        private void GetData()
        {
            SampleDataContext dbContext = new SampleDataContext();
            GridView1.DataSource = dbContext.Employees;
            GridView1.DataBind();
        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            GetData();

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            using (SampleDataContext dbContext = new SampleDataContext())
            {
                Employees newEmployee = new Employees
                {
                    FirstName = TextBox1.Text,
                    LastName = TextBox2.Text,
                    Gender = TextBox3.Text,
                    DepartmentId = Convert.ToInt32(TextBox4.Text),
                    Salary = Convert.ToInt32(TextBox5.Text)
                };

                dbContext.Employees.InsertOnSubmit(newEmployee);
                dbContext.SubmitChanges();
            }
            GetData();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SampleDataContext dbContext = new SampleDataContext())
            {

                Employees employee = dbContext.Employees.SingleOrDefault(x => x.ID == Convert.ToInt32(TextBox6.Text));


                //   employee.Salary = 65000;
                employee.FirstName = TextBox1.Text;
                employee.LastName = TextBox2.Text;
                employee.Gender = TextBox3.Text;
                employee.DepartmentId = Convert.ToInt32(TextBox4.Text);
                employee.Salary = Convert.ToInt32(TextBox5.Text);

                dbContext.SubmitChanges();
            }
            GetData();
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (SampleDataContext dbContext = new SampleDataContext())
            {
                Employees employee = dbContext.Employees.SingleOrDefault(x => x.ID == Convert.ToInt32(TextBox7.Text));
                dbContext.Employees.DeleteOnSubmit(employee);
                dbContext.SubmitChanges();
            }
            GetData();
        }

        protected void btnGetEmployeesByDepartment_Click(object sender, EventArgs e)
        {
            using (SampleDataContext dbContext = new SampleDataContext())
            {
                string deptName = string.Empty;
                GridView1.DataSource = dbContext.GetEmployeesByDepartment(1, ref deptName);
                GridView1.DataBind();
                lblDept.Text = "Department = " + deptName;
            }

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
    }
}