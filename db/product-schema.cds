namespace Productsdb;
using {  managed } from '@sap/cds/common';

@Aggregation.ApplySupported: {
    PropertyRestrictions: true
}

entity Products : managed {

    key ID        : UUID;

    @Analytics.Dimension
    productCode   : String(50);

    @Analytics.Dimension
    name          : String(150);
    
    @Analytics.Dimension
    category      : String(100);

    @Analytics.Measure
    @Aggregation.default: #SUM
    price         : Decimal(15,2);

    @Analytics.Measure
    @Aggregation.default: #SUM
    stockQuantity : Integer;

    @Analytics.Dimension
    status        : String(30);
    
    @Analytics.Dimension
    criticality   : Integer;

    items : Composition of many ProductItems
            on items.product = $self;
}

entity ProductItems : managed {

    key ID      : UUID;

    product     : Association to Products;

    itemName    : String(150);
    quantity    : Integer;
    itemPrice   : Decimal(15,2);
}



