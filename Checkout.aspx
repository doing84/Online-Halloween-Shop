<%@ Page Title="" Language="C#" MasterPageFile="~/Checkout.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="formPlaceHolder2" runat="Server">
    <h1>CheckOut Page1</h1>
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableCell><h4>Contact information</h4></asp:TableCell></asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Email address:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail1" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail1" Display="Dynamic" ErrorMessage="*Please input your e-mail address" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail1" Display="Dynamic" ErrorMessage="*Please input your e-mail address in a valid format (e.g, abc@def.com)" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Email re-entry:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtEmail2" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail2" Display="Dynamic" ErrorMessage="*Please input your e-mail address" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToValidate="txtEmail1" Display="Dynamic" ControlToCompare="txtEmail2" ErrorMessage="*Please input correct your e-mail address again" ForeColor="Red">
                </asp:CompareValidator>
           
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>First Name:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ControlToValidate="txtFName" Display="Dynamic" ErrorMessage="*Please input first name" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Last Name:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLName" Display="Dynamic" ErrorMessage="*Please input your last name" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
                
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Phone Number:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="*Please input your phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="This is invalid format (e.g, 123 456 7890)" ControlToValidate="txtPhone" Display="Dynamic" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$"></asp:RegularExpressionValidator>
             </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell><h4>Billing address</h4></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Address:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtAddr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddr" Display="Dynamic" ErrorMessage="*Please input your address" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>City:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="*Please input city" ForeColor="Red"></asp:RequiredFieldValidator>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>State:</asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="ddlState" runat="server" Width="152"></asp:DropDownList>
                
                <asp:CompareValidator id="CompareFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="ddlState" ValueToCompare="1" Type="Integer" Operator="GreaterThanEqual"  ErrorMessage="*Please choose state">
      </asp:CompareValidator >
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>Zip code:</asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="*Please input zip code" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="*Please input correct zip code (e.g,T2X 1V4 or T2X1V4)" ForeColor="Red" ValidationExpression="^((\d{5}-\d{4})|(\d{5})|([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[A-Za-z]\s?\d[A-Za-z]\d))$"></asp:RegularExpressionValidator>
            </asp:TableCell>
        </asp:TableRow>

    </asp:Table>
    <br />
    <h4>Optioinal data</h4>
    <p>Please let me know about</p>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="New products" />&nbsp &nbsp<asp:CheckBox ID="CheckBox2" runat="server" Text="New editions" /><br />
    <asp:CheckBox ID="CheckBox3" runat="server" Text="Special offers" />&nbsp &nbsp<asp:CheckBox ID="CheckBox4" runat="server" Text="Local events" />
    <br />
    <br />
    <p>Please contact me via</p>
    <asp:RadioButton ID="rdTwitter" runat="server" GroupName="contact" Text="Twitter" />
    <asp:RadioButton ID="rdFace" runat="server" GroupName="contact" Text="Facebook" />
    <asp:RadioButton ID="rdText" runat="server" GroupName="contact" Text="Text message" />
    <asp:RadioButton ID="rdEmail" runat="server" GroupName="contact" Text="email" />
    <br />
    <br />
    <div id="shopbuttons">
        <asp:Button ID="btnCheckout" runat="server" CssClass="button" Text="Check Out" OnClick="btnCheckout_Click" />
        <asp:Button ID="btnCancel" runat="server" CssClass="button" Text="Cancel Order" OnClick="btnCancel_Click" Width="145px" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Order.aspx" Text="Continue Shopping"></asp:HyperLink></br></br>
        <asp:Label ID="lblThanks" runat="server" Visible="false"></asp:Label><br/>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footerPlaceHolder2" runat="Server">
</asp:Content>

