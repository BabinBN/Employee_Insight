using {Products} from '../db/product-schema';
using {Suppliers} from '../db/supplier-schema';


service admin {
     @odata.draft.enabled
    entity Product as projection on Products.Products;
    // @readonly
    entity Item as projection on Products.ProductItems;
     @odata.draft.enabled
    entity Supplier as projection on Suppliers.Suppliers;

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

