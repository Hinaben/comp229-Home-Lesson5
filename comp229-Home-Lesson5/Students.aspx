<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="comp229_Home_Lesson5.Studnet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="continer">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="false"
                    CssClass="table table-bordered table-hover">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="Student ID" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" Visible="true" 
                            DataFormatString="{0:MMM dd, yyyy}"/>

                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>
