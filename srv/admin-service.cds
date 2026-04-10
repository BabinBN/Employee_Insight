using {Productsdb} from '../db/product-schema';
using {Suppliersdb} from '../db/supplier-schema';


// service admin @(path:'/admins') {
    service admin {
     @odata.draft.enabled
    entity Product as projection on Productsdb.Products;
    // @readonly
    entity Item as projection on Productsdb.ProductItems;
     @odata.draft.enabled
    entity Supplier as projection on Suppliersdb.Suppliers;

//     @cds.redirection.target
//     entity Pro as select from db.Products {
//     *,
//     case
//         when status = 'Inactive' then 1
//         when status = 'Pending' then 2
//         else 3
//     end as criticality
// };
}

