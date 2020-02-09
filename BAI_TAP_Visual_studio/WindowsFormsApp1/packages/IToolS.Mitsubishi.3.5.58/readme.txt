/*
Iprel Progetti s.r.l.

IToolS framework

Mitsubishi melsec driver configuration and sample

*/

The driver iTools Melsec allows you to communicate with the plc Mitsibishi, the areas are:

  X
  Y
  M
  L
  F
  B
  D
  W

and data types managed by the driver are:
 
 Bool
 Byte
 UByte
 Integer
 UInteger
 Real
 DoubleReal
 Long
 DoubleLong
 ULong
 DoubleULong
 String
 WString
 Bcd
 Variant
 Driver

The configuration of the PLC Mitsubishi Q series is feasible through GX - Developer


   Preliminary steps to prepare GX - Developer to communication with the CPU
   
      After creating a new project for the CPU Q13UDEH set the data transfer through the voice transfer Setup menu in the window Online Transfer Setup:

         -at the line " PC Side I / F " open " Ethernet board" and select TCP from the combobox " Protocol";
   
         -at the line " PLC Side I / F " open " PLC module" , make sure the item " Ethernet port direct connection" is unchecked and set the IP address of the PLC . If unknown you can search through the button "Find CPU ".

   Steps for configuring the PLC for TCP / IP
    
     Expand the branch " Parameter" of the Project tab and open " PLC Parameter" with double- click on the card Built-in Ethernet port:
      
         -enter the IP address of the CPU in decimal;
         -select " Binary code " in the group given Communication Code;
      
      Then click on the button " Open settings" window Built-in Ethernet port and in the following window set the line number one with the following values:
      
            - Protocol: TCP
            - Open system: MC Protocol
            - Host station port No: "port number of the PLC for communication";



The following example shows how to set the driver:


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
 
namespace TestMelsecDriver
{
   public partial class Form1 : Form
   {
      private IToolS.Components.Communication.Group group1;
      private IToolS.Components.Communication.Clients clients1;
      private IToolS.Components.IOServers.IOServer ioServer1;
      private IToolS.Windows.Forms.Variables.VariablesWindow variablesWindow1;
      private IToolS.Components.Communication.Client client1;
      private IToolS.Components.Communication.Variable variable1;
      private IToolS.Components.Communication.Variable variable2;
      /// 

      /// Required designer variable.
      /// 

      private System.ComponentModel.IContainer components = null;
 
      public Form1()
      {
         InitializeComponent();
      }
 
      private void Form1_Load(object sender, EventArgs e)
      {
         clients1.Start();
      }
 
      #region Windows Form Designer generated code
 
      /// 

      /// Required method for Designer support - do not modify
      /// the contents of this method with the code editor.
      /// 

      private void InitializeComponent()
      {
         this.components = new System.ComponentModel.Container();
         this.group1 = new IToolS.Components.Communication.Group(this.components);
         this.clients1 = new IToolS.Components.Communication.Clients(this.components);
         this.ioServer1 = new IToolS.Components.IOServers.IOServer(this.components);
         this.variablesWindow1 = new IToolS.Windows.Forms.Variables.VariablesWindow();
         this.client1 = new IToolS.Components.Communication.Client(this.components);
         this.variable1 = new IToolS.Components.Communication.Variable(this.components);
         this.variable2 = new IToolS.Components.Communication.Variable(this.components);
         ((System.ComponentModel.ISupportInitialize)(this.group1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.clients1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.ioServer1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.variablesWindow1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.client1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.variable1)).BeginInit();
         ((System.ComponentModel.ISupportInitialize)(this.variable2)).BeginInit();
         this.SuspendLayout();
         // 
         // group1
         // 
         this.group1.GroupName = "group1";
         this.group1.Items.AddRange(new IToolS.Components.Communication.Variable[] {
            this.variable1,
            this.variable2});
         // 
         // clients1
         // 
         this.clients1.ClientsName = "clients1";
         this.clients1.Items.AddRange(new IToolS.Components.Communication.Client[] {
            this.client1});
         // 
         // ioServer1
         // 
         this.ioServer1.Name = "MelsecTcp";
         this.ioServer1.NetConfig.Address = "172.17.251.129";
         this.ioServer1.NetConfig.Port = 1280;
         // 
         // variablesWindow1
         // 
         this.variablesWindow1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
            | System.Windows.Forms.AnchorStyles.Left)
            | System.Windows.Forms.AnchorStyles.Right)));
         this.variablesWindow1.ColumnColor = System.Drawing.SystemColors.Control;
         this.variablesWindow1.EditKeyboardConfig.Font = new System.Drawing.Font("Tahoma", 8F);
         this.variablesWindow1.Fields = new string[] {
        "VariableName",
        "VariableType",
        "Area",
        "Address",
        "Value"};
         this.variablesWindow1.Group = this.group1;
         this.variablesWindow1.KeyboardConfig.Font = new System.Drawing.Font("Tahoma", 8F);
         this.variablesWindow1.Location = new System.Drawing.Point(12, 12);
         this.variablesWindow1.Name = "variablesWindow1";
         this.variablesWindow1.Size = new System.Drawing.Size(565, 371);
         // 
         // client1
         // 
         this.client1.ClientName = "client1";
         this.client1.Group = this.group1;
         this.client1.IOServer = this.ioServer1;
         // 
         // variable1
         // 
         this.variable1.Address = "10";
         this.variable1.Area = "D";
         this.variable1.VariableName = "variable1";
         // 
         // variable2
         // 
         this.variable2.Address = "5";
         this.variable2.Area = "M";
         this.variable2.VariableName = "variable2";
         this.variable2.VariableType = "Bool";
         // 
         // Form1
         // 
         this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
         this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
         this.ClientSize = new System.Drawing.Size(589, 395);
         this.Controls.Add(this.variablesWindow1);
         this.Name = "Form1";
         this.Text = "Form1";
         this.Load += new System.EventHandler(this.Form1_Load);
         ((System.ComponentModel.ISupportInitialize)(this.group1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.clients1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.ioServer1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.variablesWindow1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.client1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.variable1)).EndInit();
         ((System.ComponentModel.ISupportInitialize)(this.variable2)).EndInit();
         this.ResumeLayout(false);
 
      }
 
      #endregion
 
      /// 

      /// Clean up any resources being used.
      /// 

      /// true if managed resources should be disposed; otherwise, false.
      protected override void Dispose(bool disposing)
      {
         if (disposing && (components != null))
         {
            components.Dispose();
         }
         base.Dispose(disposing);
      }
   }
}
