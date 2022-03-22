using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalExam.FinalExam
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirstName.Focus();
            }
        }

        private void ShowMessage(String MessageToDisplay)
        {
            // define the name and type of the client script
            String csName = "PopupScript";
            Type csType = this.GetType();

            // get a ClientScriptManager object
            System.Web.UI.ClientScriptManager cs = Page.ClientScript;

            // check to see if the startup script is already registered
            if (!cs.IsStartupScriptRegistered(csType, csName))
            {
                String csText = "alert('" + MessageToDisplay + "');";
                cs.RegisterStartupScript(csType, csName, csText, true);
            }
        }

        private Boolean VerifyForm()
        {
            if (txtAPANumber.Text == "")
            {
                ShowMessage("Please provide your APA number.");
                txtAPANumber.Focus();
                return false;
            }
            else if (txtFirstName.Text == string.Empty)
            {
                ShowMessage("Please provide your first name.");
                txtFirstName.Focus();
                return false;
            }
            else if (txtLastName.Text == String.Empty)
            {
                ShowMessage("Please provide your last name.");
                txtLastName.Focus();
                return false;
            }
            else if (txtPhoneNumber.Text == String.Empty)
            {
                ShowMessage("Please provide your phone number.");
                txtPhoneNumber.Focus();
                return false;
            }
            else if (txtEmailAddress.Text == String.Empty)
            {
                ShowMessage("Please provide your e-mail address.");
                txtEmailAddress.Focus();
                return false;
            }
            else if (txtInstitution.Text == String.Empty)
            {
                ShowMessage("Please provide your instution.");
                txtInstitution.Focus();
                return false;
            }
            else if (txtInstutionCode.Text == String.Empty)
            {
                ShowMessage("Please provide your instution code.");
                txtInstutionCode.Focus();
                return false;
            }
            else if (txtRegistrationFee.Text == String.Empty)
            {
                ShowMessage("Please provide your registration fee.");
                txtRegistrationFee.Focus();
                return false;
            }
            else
            {
                return true;
            }
        }

        protected Boolean AddRegistration()
        {
            //try
            //{
                // setup and create the connection to the database
                ADODB.Connection objConnect = new ADODB.Connection();
                ADODB.Recordset objRS = new ADODB.Recordset();

                String strConnection = "Data Source=csis-sql.elmhurst.edu;Initial Catalog=MIT543_Final_Exam;User ID=cs550;Password=Elmhurst1871;Provider=msoledbsql;";
                String SQL = "SELECT * FROM [Julius_Mushi];";

                // open the connection
                objConnect.Open(strConnection);
                objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);

                // add registration record
                objRS.AddNew();

                objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();

                objRS.Fields["APANumber"].Value = txtAPANumber.Text;
                objRS.Fields["FirstName"].Value = txtFirstName.Text;
                objRS.Fields["LastName"].Value = txtLastName.Text;
                objRS.Fields["PhoneNumber"].Value = txtPhoneNumber.Text;
                objRS.Fields["EmailAddress"].Value = txtEmailAddress.Text;
                objRS.Fields["Institution"].Value = txtInstitution.Text;
                objRS.Fields["InstitutionCode"].Value = txtInstutionCode.Text;
                objRS.Fields["RegistrationFee"].Value = txtRegistrationFee.Text;


                if (txtStreetAddress.Text != String.Empty)
                {
                    objRS.Fields["StreetAddress"].Value = txtStreetAddress.Text;
                }
                else
                {
                    objRS.Fields["StreetAddress"].Value = String.Empty;
                }

                if (txtCity.Text != String.Empty)
                {
                    objRS.Fields["City"].Value = txtCity.Text;
                }
                else
                {
                    objRS.Fields["City"].Value = String.Empty;
                }

                if (txtState.Text != String.Empty)
                {
                    objRS.Fields["State"].Value = txtState.Text;
                }
                else
                {
                    objRS.Fields["State"].Value = String.Empty;
                }

                if (txtZipCode.Text != String.Empty)
                {
                    objRS.Fields["ZipCode"].Value = txtZipCode.Text;
                }
                else
                {
                    objRS.Fields["ZipCode"].Value = String.Empty;
                }

                // create a datetime stamp
                objRS.Fields["DateTimeCreated"].Value = DateTime.Now;

                // save the record to the database
                objRS.Update();

                // close the connection to the database
                objRS.Close();
                objConnect.Close();

                // destroy the objects
                objRS = null;
                objConnect = null;

                return true;
            //}
            //catch (Exception)
            //{
            //    // throw;
            //    return false;
            //}
        }


        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            if (VerifyForm() == true)
            {
                if (AddRegistration() == true)
                {
                    // redirect to the thank you page
                    Response.Redirect("ThankYou.aspx");
                }
                else
                {
                    // redirect to the error page
                    Response.Redirect("Error.aspx");
                }

            }

        }

        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.apa.org/");
        }
    }
}