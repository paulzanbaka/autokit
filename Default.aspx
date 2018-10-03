<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AutomationKit._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>EWS Automation Kit </h1>
        <p class="lead"> EWS Automation Kit is a powerful toolkit that let you rapidly access and run sophisticated and powerful tools. </p>
        <p><a  class="btn btn-primary btn-lg">Welcome <asp:Label ID="Label1" runat="server"></asp:Label>!
            </a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Administration</h2>
            <p>
              
                   <a class="btn btn-default" href="#">Clean C: Drive &raquo;</a>
                      <a class="btn btn-default" href="#">Reboot Server &raquo;</a>
                  <a class="btn btn-default" href="#">Delete VSS &raquo;</a>
                              <a class="btn btn-default" href="#">Start Service &raquo;</a>
          <a class="btn btn-default" href="#">Check Server Health &raquo;</a>
                     <a class="btn btn-default" href="#"> Decomm Server &raquo;</a>       
            </p>
        </div>
        <div class="col-md-4">
            <h2>Middleware</h2>
            <p>
                <a class="btn btn-default" href="#">Deploy TEAMS to QA &raquo;</a>
       
                    <a class="btn btn-default" href="#">Deploy CTMS &raquo;</a>
                       <a class="btn btn-default" href="#">Deploy TYES &raquo;</a>
                           <a class="btn btn-default" href="#">Restart TEAMS Services &raquo;</a>
                   <a class="btn btn-default" href="#">Restart CTMS Services &raquo;</a>
                     <a class="btn btn-default" href="#">Restart App Pools &raquo;</a>
                  <a class="btn btn-default" href="#">Fixed Fule Service Management &raquo;</a>
                    <a class="btn btn-default" href="#">Reboot SQL &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>System Center</h2>
            <p>
                <a class="btn btn-default" href="#">Maintenace Mode &raquo;</a>
                   <a class="btn btn-default" href="#">Add Server to Monitoring &raquo;</a>
                          <a class="btn btn-default" href="patch_schedule.aspx">Patching Schedule &raquo;</a>
                                 <a class="btn btn-default" href="#">Patch NOW! &raquo;</a>
                   <a class="btn btn-default" href="#">Add Server to SCCM Collection &raquo;</a>
                      <a class="btn btn-default" href="Group.aspx">Get SCCM Collection Collection &raquo;</a>
                 
            </p>
        </div>
        
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>Infrastructure</h2>
            <p>
                       <a class="btn btn-default" href="#"> Server Request &raquo;</a>        
                <a class="btn btn-default" href="#">Complete New Server Build &raquo;</a>
                              <a class="btn btn-default" href="#">Restart VDI Machine&raquo;</a>
                          <a class="btn btn-default" href="#">iLO &raquo;</a>
                             
                                              <a class="btn btn-default" href="https://virtualcenter.nscorp.com/" target="_blank">Virtual Center &raquo;</a>       
            </p>
        </div>
        <div class="col-md-4">
            <h2>Exchange and AD</h2>
            <p>
         <a class="btn btn-default" href="#">Change DL Owner&raquo;</a>
                  <a class="btn btn-default" href="#">Get DL Members &raquo;</a>
                           <a class="btn btn-default" href="#">Move User to OU &raquo;</a>
                
                           <a class="btn btn-default" href="#">Move Computer to a group &raquo;</a>
                   <a class="btn btn-default" href="#">Get AD group Members &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Voice & Fax</h2>
            <p>
                             
                <a class="btn btn-default" href="#">NICE »</a>
                      
     
                                       <a class="btn btn-default" href="#">Rightfax&nbsp; &raquo;</a>
            
                                    <a class="btn btn-default" href="#">Send Test Fax &raquo;</a>               <a class="btn btn-default" href="#">TBD &raquo;</a>          
                                       
            </p>
        </div>
    </div>
    <div class="row">
        
        
        <div class="col-md-4">
            <h2>Reports</h2>
            <p>
                <a class="btn btn-default" href="https://opsmgr.nscorp.com/OperationsManager/#/view(id=6a6299c2-017e-8324-68e5-381ca6735117)" target="_blank">Low Disk Drive &raquo;</a>       
                <a class="btn btn-default" href="#">No Reboot in 60 days &raquo;</a>
                             
                
             <a class="btn btn-default" href="http://gatucitsccm42s.nscorp.ad.nscorp.com/Reports_CONFIGMGRNS1/Pages/Report.aspx?ItemPath=%2fConfigMgr_NS1%2fSoftware+Updates+-+A+Compliance%2fCompliance+1+-+Overall+compliance" target="_blank"> Patch Compliance &raquo;</a>  <a class="btn btn-default" href="http://itssrs2k8pr.atldc.nscorp.com/Reports_SERVICEMGR/Pages/Report.aspx?ItemPath=%2fhpServiceManager%2fEWS+Morning+Report+HPSM+Parts" target="_blank">EWS Morning Report &raquo;</a>
                 <a class="btn btn-default" href="#">Servers not in SCCM Collection &raquo;</a>
                   <a class="btn btn-default" href="#">Maintenance Mode &raquo;</a>
                    
                     
            </p>
        </div>
        <div class="col-md-4">
            <h2>Resources</h2>
            <p>
                             
                <a class="btn btn-default" href="https://dept.nscorp.com/it/ds/EWS/2%20AM%20Docs/2%20AM%20Docs?Web=1" target="_blank">2 AM Docs &raquo;</a>
                              <a class="btn btn-default" href="https://dept.nscorp.com/it/ds/EWS/SitePages/Home.aspx" target="_blank">EWS SharePoint &raquo;</a>
            
                               <a class="btn btn-default" href="https://dept.nscorp.com/it/ds/EWS/SitePages/EWS%20Internal%20Team%20-%20Open%20Access%20Page.aspx"  target="_blank">EWS Weekly Accomplishments &raquo;</a>    
                               <a class="btn btn-default" href="https://project.nscorp.com/PWA/Timesheet.aspx"  target="_blank">Timesheet &raquo;</a>

                                                     <a class="btn btn-default" href="#">Who's on Call? &raquo;</a>
                <a class="btn btn-default" href="https://dept.nscorp.com/it/ds/BRDR%20Wallet%20Cards/Forms/AllItems.aspx" target="_blank">BR/DR Wallet Cards &raquo;</a>
                <a class="btn btn-default" href="https://dept.nscorp.com/it/ds/EWS/Remote%20Work%20Logs/Forms/AllItems.aspx" target="_blank">Remote Work Log &raquo;</a>
                              <a class="btn btn-default" href="https://servicemanager.nscorp.com/sm/index.do" target="_blank">HPSM  &raquo;</a>       
                         <a class="btn btn-default" href="http://prodsc.nscorp.com/usm/wpf" target="_blank">SRA  &raquo;</a>                    
            </p>
        </div>
        <div class="col-md-4">
            <h2>Tools</h2>
            <p>
       
                  <a class="btn btn-default" href="issDecomm.aspx">Check  if Server is Decomm&raquo;</a>
                        <a class="btn btn-default" href="OnCall.aspx" >Who's Oncall?  &raquo;</a>   
                  <a class="btn btn-default" href="http://ewsinventory.nscorp.com/" target="_blank">EWS Inventory &raquo;</a>
                    <a class="btn btn-default" href="http://fastpage.nscorp.com/cgi-bin/emag.pl" target="_blank">Send a FastPage Message &raquo;</a>
               
                         <a class="btn btn-default" href="http://prodsc.nscorp.com/usm/wpf" target="_blank">SRA  &raquo;</a> 
                       <a class="btn btn-default" href="https://opsmgr.nscorp.com/OperationsManager/" target="_blank">SCOM Web Console &raquo;</a>   
                     <a class="btn btn-default" href="https://opsmgrqa.nscorp.com/OperationsManager/" target="_blank">SCOM QA Web Console &raquo;</a>  
            </p>
        </div>
    </div>
</asp:Content>
