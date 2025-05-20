@EndUserText.label: 'Approval for travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity YI_TR_TRAVEL_APPROVER as projection on yi_tr_travel
{
@ObjectModel.text.element: [ 'Description' ]
    key TravelId,
    @ObjectModel.text.element: [ 'AgencyName' ]
    @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Agency',
    entity.element: 'AgencyID'
    }]
    AgencyId,
    @Semantics.text: true
    _Agency.Name as AgencyName,
    @ObjectModel.text.element: [ 'CustomerName' ]
    @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Customer',
    entity.element: 'CustomerID'
    }]
    CustomerId,
    @Semantics.text: true
    _Customer.LastName as CustomerName,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    @Semantics.text: true
    Description,
       @Consumption.valueHelpDefinition: [{
    entity.name: '/DMO/I_Overall_Status_VH',
    entity.element: 'OverallStatus'
    }]
    @ObjectModel.text.element: [ 'StatusText' ]
    OverallStatus,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    @Semantics.text: true
    StatusText,
    Criticality,
    /* Associations */
    _Agency,
    _Booking: redirected to composition child  YI_TR_booking_approver,
    _Currency,
    _Customer,
    _OverallStatus

}
