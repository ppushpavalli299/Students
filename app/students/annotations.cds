using StudentService as service from '../../srv/student-service';

annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'FirstName',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'LastName',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'DOB',
                Value: dateOfBirth,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'StudentAddresses',
            ID    : 'studentAddresses',
            Target: 'addresses/@UI.LineItem#studentAddresses',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'FirstName',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'LastName',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Gender',
            Value: gender,
        },
        {
            $Type: 'UI.DataField',
            Label: 'DOB',
            Value: dateOfBirth,
        },
    ],
    UI.SelectionFields           : [
        Name,
        Gender,
    ],
);

annotate service.studentAddress with @(
    UI.LineItem #studentAddresses: [
        {
            $Type: 'UI.DataField',
            Value: streetName,
            Label: 'StreetName',
        },
        {
            $Type: 'UI.DataField',
            Value: region,
            Label: 'Region',
        },
        {
            $Type: 'UI.DataField',
            Value: country,
            Label: 'Country',
        },
        {
            $Type: 'UI.DataField',
            Value: postalCode,
            Label: 'PostalCode',
        },
        {
            $Type: 'UI.DataField',
            Value: phoneNumber,
            Label: 'PhoneNumber',
        },
        {
            $Type: 'UI.DataField',
            Value: EmailAddress,
            Label: 'EmailAddress',
        },
    ],
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'StudentDetails',
        Label : 'Student Details',
        Target: 'details/@UI.LineItem#studentDetail',
    }]
);

annotate service.studentDetail with @(UI.LineItem #studentDetail: [{
    $Type: 'UI.DataField',
    Value: description,
    Label: 'Description',
}, ], );

annotate service.Student with {
    name @Common.Label: 'Name'
};

annotate service.Student with {
    gender @Common.Label: 'Gender'
};
