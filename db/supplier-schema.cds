namespace Suppliersdb;
using {  managed } from '@sap/cds/common';


entity Suppliers : managed {

    key ID            : UUID;
 
    @mandatory
    @Common.Label :'Supplier Code'
    supplierCode      : String(50) ;
    @mandatory
    @Common.Label :'Supplier Name'
    supplierName      : String(150);
    @Common.Label :'Contact Person'
    contactPerson     : String(120);
    @mandatory
    @Common.Label :'Email'
    email             : String(120);
    @Common.Label :'Phone'
    phone             : String(30);
    @Common.Label :'City'
    city              : String(100);
    @Common.Label :'Status'
    status            : String(30);

}