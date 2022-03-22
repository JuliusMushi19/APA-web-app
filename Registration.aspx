<%@ Page Title="" Language="C#" MasterPageFile="~/FinalExam/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FinalExam.FinalExam.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="MyContentPlaceHolder" runat="server">
    <table width="772" cellspacing="0" cellpadding="0" border="0" align="center">
    <tr>
        <td>

            <table border="0">
                <tr>
                    <td colspan="5"><h2>Online Registration Form</h2></td>
                </tr>
                  <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>APA Member Number:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtAPANumber" runat="server" Columns="35" MaxLength="50" ControlToValidate="txtAPANumber"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvAPANumber" runat="server" ErrorMessage="Please provide your APA number." Display="Dynamic" ControlToValidate="txtAPANumber" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>First Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtFirstName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please provide your first name." Display="Dynamic" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Last Name:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtLastName" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Please provide your last name." Display="Dynamic" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator></td>

                </tr>
                <tr>
                    <td width="10">&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td>Street Address:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtStreetAddress" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10">&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td>City:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtCity" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10">&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td>State:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtState" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10">&nbsp;</td>
                    <td width="5">&nbsp;</td>
                    <td>Zip Code:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtZipCode" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Phone Number:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtPhoneNumber" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ErrorMessage="Please provide your phone number." Display="Dynamic" ControlToValidate="txtPhoneNumber" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>E-mail Address:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtEmailAddress" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ErrorMessage="Please provide your e-mail address." Display="Dynamic" ControlToValidate="txtEmailAddress" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Institution:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtInstitution" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvInstitution" runat="server" ErrorMessage="Please provide your instution." Display="Dynamic" ControlToValidate="txtInstitution" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Institution Code:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtInstutionCode" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvInstitutionCode" runat="server" ErrorMessage="Please provide your instution code." Display="Dynamic" ControlToValidate="txtInstutionCode" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td width="10"><img src="images/required.gif" /></td>
                    <td width="5">&nbsp;</td>
                    <td>Registration Fee:</td>
                    <td width="5">&nbsp;</td>
                    <td><asp:TextBox ID="txtRegistrationFee" runat="server" Columns="35" MaxLength="50"></asp:TextBox></td>
                    <td width="5">&nbsp;</td>
                    <td><asp:RequiredFieldValidator ID="rfvRegistrationFee" runat="server" ErrorMessage="Please provide your registration fee." Display="Dynamic" ControlToValidate="txtRegistrationFee" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="5"><asp:Button ID="cmdSubmit" runat="server" Text="Submit Registration" OnClick="cmdSubmit_Click" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="cmdCancel" runat="server" OnClick="cmdCancel_Click">Cancel</asp:LinkButton></td>
                </tr>
            </table>

        </td>
    </tr>
  </table>
</asp:Content>
