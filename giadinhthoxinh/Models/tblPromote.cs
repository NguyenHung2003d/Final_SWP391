//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace giadinhthoxinh.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblPromote
    {
        public int PK_iPromoteID { get; set; }
        public int FK_iSupplierID { get; set; }
        public string sPromoteName { get; set; }
        public Nullable<double> sPromoteRate { get; set; }
        public Nullable<System.DateTime> dtStartDay { get; set; }
        public Nullable<System.DateTime> dtEndDay { get; set; }
    
        public virtual tblSupplier tblSupplier { get; set; }
    }
}
