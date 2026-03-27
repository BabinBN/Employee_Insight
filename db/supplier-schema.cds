namespace Suppliersdb;
using {  managed } from '@sap/cds/common';


entity Suppliers : managed {

    key ID            : UUID;

    supplierCode      : String(50);
    supplierName      : String(150);
    contactPerson     : String(120);
    email             : String(120);
    phone             : String(30);
    city              : String(100);
    status            : String(30);

}