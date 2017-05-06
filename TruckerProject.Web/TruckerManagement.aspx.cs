using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruckerProject.Web
{
    public partial class TruckerManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newTrucker_Click(object sender, EventArgs e)
        {
            var newTrucker = buildTrucker();
            Domain.TruckerManager.CreateTrucker(newTrucker);
        }

        private DTO.TruckerDTO buildTrucker()
        {
            DTO.TruckerDTO trucker = new DTO.TruckerDTO();
            trucker.TruckerID = Guid.NewGuid();
            trucker.FirstName = firstNameTextBox.Text;
            trucker.LastName = lastNameTextBox.Text;
            trucker.Address = addressTextBox.Text;
            trucker.CityStateZip = cityTextBox.Text + ", " + stateDropDownList.SelectedValue.ToString() + " " + zipTextBox.Text;
            trucker.LicenseNumber = licenseNumberTextBox.Text;
            trucker.ExpirationDate = DateTime.Parse(expirationDateTextBox.Text);
            trucker.ClassA = classACheckBox.Checked;
            trucker.ClassB = classBCheckBox.Checked;
            trucker.ClassC = classCCheckBox.Checked;
            return trucker;
        }
    }
}