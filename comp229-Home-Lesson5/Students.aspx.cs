using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statement required for DB connection
using comp229_Home_Lesson5.Models;
using System.Web.ModelBinding;

namespace comp229_Home_Lesson5
{
    public partial class Studnet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //only do it for the first page load
            if (!IsPostBack)
            {
                getStudents();
            }

        }

        private void getStudents()
        {
            //connect to Entity Framework Database
            using (ContosoContext db = new ContosoContext())
            {
                //query the student data
                var studnets = (from allStudents in db.Students
                                select allStudents);
                // bind the resultset to the student grid
                StudentGridView.DataSource = studnets.ToList();
                StudentGridView.DataBind();


            }
        }
    }
}