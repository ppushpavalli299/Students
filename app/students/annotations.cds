using StudentService as service from '../../srv/student-service';

annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'firstName',
                Value: firstName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'lastName',
                Value: lastName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'dateOfBirth',
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
            Label : 'studentAddresses',
            ID    : 'studentAddresses',
            Target: 'addresses/@UI.LineItem#studentAddresses',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'firstName',
            Value: firstName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'lastName',
            Value: lastName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'gender',
            Value: gender,
        },
        {
            $Type: 'UI.DataField',
            Label: 'dateOfBirth',
            Value: dateOfBirth,
        },
    ],
    UI.SelectionFields           : [
        name,
        gender,
    ],
);

annotate service.studentAddress with @(
    UI.LineItem #studentAddresses: [
        {
            $Type: 'UI.DataField',
            Value: streetName,
            Label: 'streetName',
        },
        {
            $Type: 'UI.DataField',
            Value: region,
            Label: 'region',
        },
        {
            $Type: 'UI.DataField',
            Value: country,
            Label: 'country',
        },
        {
            $Type: 'UI.DataField',
            Value: postalCode,
            Label: 'postalCode',
        },
        {
            $Type: 'UI.DataField',
            Value: phoneNumber,
            Label: 'phoneNumber',
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
    Label: 'description',
}, ], );

annotate service.Student with {
    name @Common.Label: 'name'
};

annotate service.Student with {
    gender @Common.Label: 'gender'
};
