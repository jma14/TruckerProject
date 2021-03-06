﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
            if(!IsPostBack)
            {

                makeCheckBoxList();
                makeStateDropDownList();

                try
                {
                    int truckerID = int.Parse(Request.QueryString["id"]);
                    DTO.TruckerDTO activeTrucker = Domain.TruckerManager.EditTrucker(truckerID);
                    activeTrucker.TruckerID = truckerID;
                    fillForm(activeTrucker);
                }
                catch
                {

                }
                
            }
        }

        protected void fillForm(DTO.TruckerDTO activeTrucker)
        {
            firstNameTextBox.Text = activeTrucker.FirstName;
            lastNameTextBox.Text = activeTrucker.LastName;
            addressTextBox.Text = activeTrucker.Address;
            cityTextBox.Text = activeTrucker.City;
            stateDropDownList.SelectedValue = activeTrucker.State;
            zipTextBox.Text = activeTrucker.Zip;
            licenseNumberTextBox.Text = activeTrucker.LicenseNumber;
            expirationDateTextBox.Text = activeTrucker.ExpirationDate.ToShortDateString();
            foreach (var license in activeTrucker.Licenses)
            {
                if (licenseCheckBoxList.Items.FindByValue(license.LicenseType.ToString()) != null)
                    licenseCheckBoxList.Items.FindByValue(license.LicenseType.ToString()).Selected = true;
            }
        }

        protected void backToDefaultPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void newTrucker_Click(object sender, EventArgs e)
        {
            var newTrucker = buildTrucker();
            Domain.TruckerManager.CreateTrucker(newTrucker);
            Response.Redirect("Default.aspx");
        }

        protected void updateTrucker_Click(object sender, EventArgs e)
        {
            int truckerID = int.Parse(Request.QueryString["id"]);
            var updatedTrucker = rebuildTrucker(truckerID);
            Domain.TruckerManager.UpdateTrucker(updatedTrucker);
            Response.Redirect("Default.aspx");
        }

        private DTO.TruckerDTO buildTrucker()
        {
            DTO.TruckerDTO trucker = new DTO.TruckerDTO();
            trucker.FirstName = firstNameTextBox.Text;
            trucker.LastName = lastNameTextBox.Text;
            trucker.Address = addressTextBox.Text;
            trucker.City = cityTextBox.Text;
            trucker.State = stateDropDownList.SelectedValue.ToString();
            trucker.Zip = zipTextBox.Text;
            trucker.LicenseNumber = licenseNumberTextBox.Text;
            trucker.ExpirationDate = DateTime.Parse(expirationDateTextBox.Text);
            trucker.Licenses = buildLicenses();

            return trucker;
        }
        
        private List<DTO.LicenseDTO> buildLicenses()
        {
            List<DTO.LicenseDTO> licenses = new List<DTO.LicenseDTO>();
            for (int i = 0; i < licenseCheckBoxList.Items.Count; i++)
            {
                if(licenseCheckBoxList.Items[i].Selected)
                {
                    licenses.Add(new DTO.LicenseDTO { LicenseType = licenseCheckBoxList.Items[i].Value });
                }
            }
            return licenses;
        }
        
        private DTO.TruckerDTO rebuildTrucker(int truckerID)
        {
            DTO.TruckerDTO trucker = new DTO.TruckerDTO();
            trucker.TruckerID = truckerID;
            trucker.FirstName = firstNameTextBox.Text;
            trucker.LastName = lastNameTextBox.Text;
            trucker.Address = addressTextBox.Text;
            trucker.City = cityTextBox.Text;
            trucker.State = stateDropDownList.SelectedValue.ToString();
            trucker.Zip = zipTextBox.Text;
            trucker.LicenseNumber = licenseNumberTextBox.Text;
            trucker.ExpirationDate = DateTime.Parse(expirationDateTextBox.Text);
            trucker.Licenses = buildLicenses();

            return trucker;
        }

        private void makeCheckBoxList()
        {

            List<DTO.LicenseDTO> licenseTypes = Domain.LicenseManager.GetLicenses();

            foreach (var licenseType in licenseTypes)
            {
                licenseCheckBoxList.Items.Add(new ListItem { Text = licenseType.LicenseType.ToString(), Value = licenseType.LicenseType.ToString() });
            }

        }

        private void makeStateDropDownList()
        {
            stateDropDownList.DataSource = Domain.StatesManager.GetStates();
            stateDropDownList.DataBind();
        }
    }
}