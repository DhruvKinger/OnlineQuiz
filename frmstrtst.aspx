<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmstrtst.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="section1 sectionContact">

     <div class="section1Header">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
	
						
							 <h1>Test Your Skill</h1>
                    </div></div></div></div></div>
                    <div class="sectionSurvey">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
                    <div class="form-group">
							<label class="tstSize" for="inlineFormInput">Select Technology</label>
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control input-sm dw1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="tecnam" DataValueField="teccod">

                        </asp:DropDownList>
						</div>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsp_rec" TypeName="nsskills.clstec"></asp:ObjectDataSource>
				</div>
                 <div class="col-sm-12">
					
						<div class="form-group">
					<label class="tstSize" for="inlineFormInput">Select Level</label>
							
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control input-sm dw1" AutoPostBack="True" >
                      <asp:ListItem Value="B">Beginer</asp:ListItem>
                      <asp:ListItem Value="I">Intermediate</asp:ListItem>
                      <asp:ListItem Value="E">Expert</asp:ListItem>
                            </asp:DropDownList>
						</div>
					
			</div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Start Test" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>

            </div>
</asp:Content>

