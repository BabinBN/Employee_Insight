using admin as service from '../../srv/admin-service';
annotate service.Product with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Productcode}',
                Value : productCode,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Name3}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Category}',
                Value : category,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Price}',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Stockquantity}',
                Value : stockQuantity,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Status}',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>ProductInfo}',
            ID : 'ProductInfo',
            Target : '@UI.FieldGroup#ProductInfo',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID : 'Item',
            Target : 'items/@UI.LineItem#Item',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Productcode}',
            Value : productCode,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Category}',
            Value : category,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Price}',
            Value : price,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Stockquantity}',
            Value : stockQuantity,
        },
    ],
    UI.SelectionFields : [
        productCode,
        status,
        name,
    ],
    UI.FieldGroup #i18nEmployeeinfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : productCode,
                Label : '{i18n>Productcode}',
            },
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>Name}',
            },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : '{i18n>Status}',
            },
        ],
    },
    UI.DataPoint #productCode : {
        $Type : 'UI.DataPointType',
        Value : productCode,
        Title : 'productCode',
    },
    UI.DataPoint #price : {
        $Type : 'UI.DataPointType',
        Value : price,
        Title : 'price',
    },
    UI.DataPoint #name : {
        $Type : 'UI.DataPointType',
        Value : name,
        Title : 'name',
    },
    UI.HeaderFacets : [
        
    ],
    UI.DataPoint #price1 : {
        Value : price,
        MinimumValue : 0,
        MaximumValue : 3,
    },
    UI.Chart #price : {
        ChartType : #Bullet,
        Title : 'price',
        Measures : [
            price,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#price1',
                Role : #Axis1,
                Measure : price,
            },
        ],
    },
    UI.FieldGroup #employee : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
                Label : '{i18n>Name2}',
            },
            {
                $Type : 'UI.DataField',
                Value : price,
                Label : '{i18n>Price}',
            },
            {
                $Type : 'UI.DataField',
                Value : productCode,
                Label : '{i18n>Productcode}',
            },
            {
                $Type : 'UI.DataField',
                Value : status,
                Label : '{i18n>Status}',
            },
            {
                $Type : 'UI.DataField',
                Value : stockQuantity,
                Label : '{i18n>Stockquantity}',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : '',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : productCode,
        },
        TypeImageUrl : 'sap-icon://employee',
    },
    UI.FieldGroup #_ : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : productCode,
            },
            {
                $Type : 'UI.DataField',
                Value : stockQuantity,
                Label : 'stockQuantity',
            },
        ],
    },
    UI.FieldGroup #testweetf : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
        ],
    },
    UI.DataPoint #price2 : {
        Value : price,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #stockQuantity : {
        Value : stockQuantity,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #price3 : {
        Value : price,
        Visualization : #Progress,
        TargetValue : 100,
    },
    UI.DataPoint #stockQuantity1 : {
        Value : stockQuantity,
        Visualization : #Progress,
        TargetValue : 100,
    },
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : category,
    },
    UI.FieldGroup #ProductInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : productCode,
            },
            {
                $Type : 'UI.DataField',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Value : stockQuantity,
                Label : '{i18n>Stockquantity}',
            },
        ],
    },
    );

annotate service.Product with {
    name @(
        Common.Label : '{i18n>Name}',
        )
};

annotate service.Product with {
    productCode @Common.Label : '{i18n>Productcode}'
};

annotate service.Product with {
    status @Common.Label : '{i18n>Status}'
};

annotate service.Item with @(
    UI.LineItem #Item : [
        {
            $Type : 'UI.DataField',
            Value : itemName,
            Label : 'itemName',
        },
        {
            $Type : 'UI.DataField',
            Value : itemPrice,
            Label : 'itemPrice',
        },
        {
            $Type : 'UI.DataField',
            Value : product.items.product.items.quantity,
            Label : 'quantity',
            Criticality : product.criticality,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Value : product.productCode,
        },
        {
            $Type : 'UI.DataField',
            Value : product.status,
        },
        {
            $Type : 'UI.DataField',
            Value : product.price,
            Label : 'price',
        },
    ],
    UI.DataPoint #itemPrice : {
        Value : itemPrice,
        MinimumValue : 0,
        MaximumValue : 3,
    },
    UI.Chart #itemPrice : {
        ChartType : #Bullet,
        Measures : [
            itemPrice,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#itemPrice',
                Role : #Axis1,
                Measure : itemPrice,
            },
        ],
    },
);

