<%@ Page Title="GBA CQL Query Tool" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GBA_CQL._Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>
                Server: &nbsp;
        <asp:DropDownList ID="ddlServer" runat="server" Width="300px" CssClass="form-control form-control-sm">
            <asp:ListItem>http://pat07:8080/fhir</asp:ListItem>
            <asp:ListItem>https://blaze.life.uni-leipzig.de/fhir</asp:ListItem>
        </asp:DropDownList>
            </p>
            CQL-Abfrage:
            <asp:TextBox ID="txtCQL" CssClass="form-control form-control-sm" runat="server" Font-Names="Consolas" Height="300px" TextMode="MultiLine" Width="1000px" OnTextChanged="txtCQL_TextChanged"></asp:TextBox>
            FHIR Resource Type: &nbsp;
        <asp:DropDownList ID="ddlResourceType" runat="server" Width="300px" CssClass="form-control form-control-sm">
            <asp:ListItem>Patient</asp:ListItem>
            <asp:ListItem>Specimen</asp:ListItem>
            <asp:ListItem>Observation</asp:ListItem>
            <asp:ListItem>Condition</asp:ListItem>
        </asp:DropDownList>
            <br />
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="txtCQL" EventName="TextChanged" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Button ID="btnSend" runat="server" CssClass="btn btn-info" OnClick="btnSend_Click" Text="Abfrage senden" />
            <br />
            <br />
            Antwort:<br />
            <asp:TextBox ID="txtOutput" runat="server" CssClass="form-control form-control-sm" Font-Names="Consolas" Height="450px" TextMode="MultiLine" Width="1000px" ReadOnly="true"></asp:TextBox>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
