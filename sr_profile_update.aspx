<%@ page language="C#" autoeventwireup="true" inherits="sr_profile_update, App_Web_edp0we5m" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>HRMS Page</title>
    <link href="../../css/Calender11.css" rel="stylesheet" type="text/css" /
    
    <script src="JavaScript/jquery.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-ui.js" type="text/javascript"></script>

<%--    <script src="../../JavaScript/jquery.min.js" type="text/javascript"></script>
    <script src="../../JavaScript/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../JavaScript/jquery-ui.js" type="text/javascript"></script>--%>

    <script type="text/javascript">

        $(function () {

            $('#lastpostingdatetxt').datepicker({
                inline: true,
                dateFormat: "dd/mm/yy",

            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgPhoto')
                        .attr('src', e.target.result)
                        .width(160)
                        .height(150);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

    <style type="text/css">
        .igte_EditWithButtons
        {
            font-size: 10px;
            font-family: Segoe UI, Verdana, Arial, Sans-Serif;
            background-color: #FFFFFF;
            height: 20px;
            width: 130px;
            outline: 0;
            border: solid 1px #999999;
        }

        .igte_Inner
        {
            border-width: 0;
        }

        .igte_EditInContainer
        {
            font-size: 12px;
            font-family: Segoe UI, Verdana, Arial, Sans-Serif;
            background-color: Transparent;
            border-width: 0px;
            outline: 0;
        }

        .igte_Button
        {
            background-color: #8EBEE0;
            background-image: url(E:/PRGntSOA_HRMS/HRMS.WEB/ig_res/Default/images/igte_spinbuttonbg.gif);
            background-repeat: repeat-x;
            line-height: normal;
            border: solid 1px #699BC9;
            color: #FFFFFF;
            cursor: pointer;
        }

        .igte_ButtonSize
        {
            width: 15px;
            height: 100%;
        }

        .style92
        {
            width: 194px;
        }

        .style95
        {
        }

        .form_button
        {
            margin-left: 0px;
        }

        .style100
        {
            width: 837px;
        }

        .pos
        {
            text-align: center;
            width: 400px;
        }

        .style94
        {
            text-align: left;
            border: 1px solid White;
            width: 78px;
            height: 8px;
        }

        .style98
        {
            width: 138px;
        }

        .style113
        {
            width: 43%;
            height: 57px;
        }

        .style118
        {
            width: 68px;
        }

        .style119
        {
            width: 26px;
        }
    </style>
</head>
<body bgcolor="#c0c0c0">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <asp:ScriptManager ID="scpt" runat="server"></asp:ScriptManager>
 <%--       <asp:UpdatePanel ID="updpnel" runat="server">
            <ContentTemplate>--%>
            <div align="center" style="width: 1109px">
                <table align="center">
                    <tr>
                        <td class="style92">
                            &nbsp;
                        </td>
                        <td class="style100">
                          <%--  <img src="../image/header-bgx.jpg" style="width: 857px; height: 78px;" />--%>
                            <img src="images/header-bgx.jpg" style="width: 857px; height: 78px;" />
                        </td>
                        <td class="style118">
                        </td>
                    </tr>
                    <tr>
                        <td class="style92">
                            <asp:Label ID="Label92" runat="server" Width="240px"></asp:Label>
                            &nbsp;
                        </td>
                        <td class="style100">
                            <table align="center" bgcolor="White" style="width: 858px; margin-right: 0px">
                                <tr bgcolor="#33CCFF">
                                    <td class="style95" colspan="2" align="center">
                                        SR Profile Update
                                    </td>
                                </tr>
                                <tr bgcolor="#33CCFF">
                                    <td class="style95" colspan="2" align="center">
                                        <asp:Label ID="lblMessage" runat="server" BackColor="#8BB3BE" Font-Bold="True" Font-Size="Larger"
                                            ForeColor="#FF0066" Height="28px" Style="text-align: center" Width="531px"></asp:Label>
                                    </td>
                                </tr>
                                <tr bgcolor="#33CCFF">
                                    <td class="style95" colspan="2" bgcolor="#D2E9FF" align="center">
                                        <table class="style113" align="center">
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label138" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Staff ID :" Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="staffidtxt" runat="server" Width="120px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnGo" runat="server" Text="Go" Width="41px" OnClick="btnGo_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
<asp:Panel ID="Panel1" runat="server">
                                <tr bgcolor="#33CCFF">
                                    <td class="style95" colspan="2" bgcolor="#D2E9FF" align="center">
                                        <br />
                                        <table class="style115">
                                            <tr>
                                                <td colspan="4">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label153" runat="server" BackColor="#000099" BorderColor="#0000CC"
                                                        BorderStyle="Outset" Font-Bold="True" ForeColor="White" Style="text-align: left"
                                                        Text="Personal Information" Width="174px"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label160" runat="server" ForeColor="Red" Text="Required field [*]"></asp:Label>
                                                </td>
                                                <td align="right">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" colspan="2" rowspan="4">
                                               <%--<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true">
                                               </asp:ScriptManager>--%>
                                              <%--<asp:UpdatePanel ID="upSearch" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                              <ContentTemplate>--%>
                                                    <asp:Label ID="Label165" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Group :" Height="20px"></asp:Label>   &nbsp;&nbsp;&nbsp;
                                                    <asp:DropDownList ID="groupDropDownList" runat="server" Width="180px">
                                                    </asp:DropDownList>
                                                     <asp:Label ID="Label168" runat="server" Text="*" ForeColor="Red"></asp:Label><br /><br />
                                                   
                                                    <asp:Label ID="Label135" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Region :" Height="20px"></asp:Label>  &nbsp;&nbsp;
                                                   <asp:DropDownList ID="regionDropDownList" runat="server" Width="180px" 
                                                        AutoPostBack="true" OnSelectedIndexChanged="regionDropDownList_SelectedIndexChanged">
                                                   </asp:DropDownList>
                                                   <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label><br /><br />
                                                   
                                                   
                                                    <asp:Label ID="Label136" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Zone :" Height="20px"></asp:Label>  
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                   <asp:DropDownList ID="zoneDropDownList" AutoPostBack="true" runat="server" Width="180px" OnSelectedIndexChanged="zoneDropDownList_SelectedIndexChanged" >
                                                  </asp:DropDownList>
                                                    <asp:Label ID="Label169" runat="server" Text="*" ForeColor="Red"></asp:Label><br /><br />  
                                                        
                                                    <asp:Label ID="Label137" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Base :" Height="20px"></asp:Label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:DropDownList ID="baseDropDownList" runat="server" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="baseDropDownList_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="Label170" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                   <%--</ContentTemplate>
                                                   </asp:UpdatePanel>--%>
                                                </td>
                                                <td align="left" colspan="2" rowspan="4">
                                                    <table class="style116" align="center">
                                                        <tr>
                                                           <td>
                                                   <%--    <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                                         <ContentTemplate>--%>
                                                                   <asp:Image ID="imgPhoto" src="" Width="160" Height="150" 
                                                                 runat="server" Visible="true" BorderStyle="Dotted"/>
                                                     <asp:Image ID="driverImage" Width="160" Height="150" runat="server" />
                                                                 <br />
                                                                  <asp:FileUpload ID="FileUpload1" runat="server" Height="24px" Width="214px"  
                                                                onchange="readURL(this);" />
                                                          <%--      </ContentTemplate>
                                                                </asp:UpdatePanel>--%>
                                                           </td>

                                                        </tr>

                                                     </table>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                                <td class="style119">
                                                    &nbsp;
                                                </td>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                                <td align="right">
                                                    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" Width="53px"
                                                        BackColor="#009900" ForeColor="White" BorderColor="#009900" />
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label139" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Staff Name :" Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="StaffNametxt" runat="server" Width="140px" Enabled="false"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label143" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Father Name :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="fathernametxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label140" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Designation :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="desigtxt" runat="server" Width="140px" Enabled="false"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label144" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Mother Name :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="mothernametxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label163" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Joining Date :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="joiningdatetxt" runat="server" Width="140px" Enabled="false"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label162" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Mobile No :" Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="mobilenotxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label164" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label166" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Last Posting Date :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="lastpostingdatetxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label146" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Emergency Contact Name :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="emergnconnametxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label142" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Job Duration :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="jobdurationtxt" runat="server" Width="140px" Enabled="false"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label167" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Emergency Contact NO. :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="emergnconnotxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label147" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Blood Group :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <%--    <asp:TextBox ID="bloodgrouptxt" runat="server"Width="140px"></asp:TextBox>--%>
                                                    <asp:Panel ID="Panel2" runat="server">
                                                        <asp:TextBox ID="txtbloodgroup" runat="server" Enabled="false"></asp:TextBox>
                                                    </asp:Panel>
                                                    <asp:Panel ID="Panel3" runat="server">
                                                        <asp:DropDownList ID="BloodDropDownList" runat="server" Width="140px">
                                                            <asp:ListItem>Select</asp:ListItem>
                                                            <asp:ListItem>A+</asp:ListItem>
                                                            <asp:ListItem>A-</asp:ListItem>
                                                            <asp:ListItem>B+</asp:ListItem>
                                                            <asp:ListItem>B-</asp:ListItem>
                                                            <asp:ListItem>AB+</asp:ListItem>
                                                            <asp:ListItem>AB-</asp:ListItem>
                                                            <asp:ListItem>0+</asp:ListItem>
                                                            <asp:ListItem>0-</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </asp:Panel>
                                                </td>
                                                <td align="left">
                                                    <asp:Label ID="Label148" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="National ID :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="nationalidtxt" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Label ID="Label173" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Education :" Height="20px"></asp:Label>
                                                </td>
                                                <td class="style119">
                                                    <asp:TextBox ID="txtEducation" runat="server" Width="140px"></asp:TextBox>
                                                </td>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" align="center">
                                                    <asp:Label ID="Label60" runat="server" BackColor="#000099" BorderColor="#0000CC"
                                                        BorderStyle="Outset" Font-Bold="True" ForeColor="White" Style="text-align: left"
                                                        Text="Address Information" Width="177px"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="right">
                                                    <asp:Label ID="Label149" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Present Address :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td colspan="2" align="left">
                                                    <asp:TextBox ID="presentaddrstxt" runat="server" Width="200px"></asp:TextBox>
                                                    <asp:Label ID="Label156" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="right">
                                                    <asp:Label ID="Label150" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Permanent Address :"
                                                        Height="20px"></asp:Label>
                                                </td>
                                                <td colspan="2" align="left">
                                                    <asp:TextBox ID="permanentadddrstxt" runat="server" Width="200px"></asp:TextBox>
                                                    <asp:Label ID="Label157" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="5" align="center">
                                              <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">
                                              <ContentTemplate>--%>
 <asp:UpdatePanel ID="updpnel" runat="server">
            <ContentTemplate>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label152" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Home District :"
                                                        Height="20px"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="distDropDownList" runat="server" Width="205px" AutoPostBack="true"
                                                        OnSelectedIndexChanged="distDropDownList_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="Label158" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                                    <br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label172" runat="server" BorderColor="#CC6699" BorderStyle="None"
                                                        Font-Bold="True" Font-Names="Tunga" ForeColor="#003300" Text="Home Thana/Town :"
                                                        Height="20px"></asp:Label>
                                                    &nbsp;<asp:DropDownList ID="thanaDropDownList" runat="server" Width="205px">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="Label159" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </ContentTemplate>
     </asp:UpdatePanel>
                                          
                                                
                                                    <%--</ContentTemplate>
                                                        </asp:UpdatePanel>--%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="right">
                                                    &nbsp;</td>
                                                <td colspan="2" align="left">
                                                    <%--<asp:TextBox ID="hometowntxt" runat="server" 
                                    Width="200px"></asp:TextBox>--%>
                                                    </td>
                                                <td align="left">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                         
                                    <%--        <tr>
                                                <td align="center" colspan="2" rowspan="4">
                                                 
                                                </td>
                                            </tr>--%>
                                        </table>
                                    </td>
                                </tr>
                                </asp:Panel>
                     <%--           <tr bgcolor="#33CCFF">
                                    <td class="style95" colspan="2" bgcolor="#D2E9FF" align="center">
                                        <table class="style94">
                                            <tr>
                                                <td class="style98">
                                                    <asp:Label ID="Label107" runat="server" Font-Bold="True" ForeColor="#669999" Text="Name"></asp:Label>
                                                </td>
                                                <td colspan="2">
                                                    <asp:TextBox ID="txtStaffName" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                        Width="225px" ReadOnly="True"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtStaffId" runat="server" ForeColor="#669999" BorderStyle="Dotted"
                                                        Enabled="False" Width="83px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label57" runat="server" Font-Bold="True" ForeColor="#669999" Text="Department"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDept" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                        Width="183px" ReadOnly="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style98">
                                                    <asp:Label ID="Label108" runat="server" Font-Bold="True" ForeColor="#669999" Text="Designation"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDesignation" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                        Width="193px" ReadOnly="True"></asp:TextBox>
                                                </td>
                                                <td class="style98">
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label109" runat="server" Font-Bold="True" ForeColor="#669999" Text="Email"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Dotted" ForeColor="#669999"
                                                        Width="189px" ReadOnly="True"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>--%>
                                <tr bgcolor="#D2E9FF">
                                    <td class="style95">
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style118">
                            <asp:Label ID="Label93" runat="server" Width="120px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style92">
                            &nbsp;
                        </td>
                        <td class="style100">
                          <%--  <img src="../image/footer-bg.jpg" style="width: 857px" />--%>
                            <img src="images/footer-bg.jpg" style="width: 857px" />
                        </td>
                        <td class="style118">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                <br />
            </div>
<%--            </ContentTemplate>
            </asp:UpdatePanel>--%>

     <%--       </ContentTemplate>
        </asp:UpdatePanel>--%>
    </form>
</body>
</html>


