//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TruckerProject.Persistence
{
    using System;
    using System.Collections.Generic;
    
    public partial class Trucker
    {
        public System.Guid TruckerID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string LicenseNumber { get; set; }
        public System.DateTime ExpirationDate { get; set; }
        public bool ClassA { get; set; }
        public bool ClassB { get; set; }
        public bool ClassC { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }
}
