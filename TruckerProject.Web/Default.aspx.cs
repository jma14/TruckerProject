using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckerProject.Web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                refreshGridView();
        }

        protected void AddTrucker_Click(object sender, EventArgs e)
        {
            Response.Redirect("TruckerManagement.aspx");
        }

        protected void TruckersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = TruckersGridView.Rows[index];
            var value = row.Cells[2].Text.ToString();
            var truckerID = Guid.Parse(value);
            
            if(e.CommandName=="Edit")
            {
                Response.Redirect("TruckerManagement.aspx?id=" + truckerID.ToString());
            }
            else
            {
                Domain.TruckerManager.DeleteTrucker(truckerID);
                refreshGridView();
            }
            
        }


        private void refreshGridView()
        {
            TruckersGridView.DataSource = Domain.TruckerManager.GetTruckers();
            TruckersGridView.DataBind();
        }


    }
}