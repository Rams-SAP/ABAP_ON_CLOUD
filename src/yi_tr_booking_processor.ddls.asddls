@EndUserText.label: 'My travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity YI_TR_booking_PROCESSOR as projection on yi_tr_booking
{
key TravelId,
key BookingId,
BookingDate,
@Consumption.valueHelpDefinition: [{ 
entity.name: '/DMO/I_CUSTOMER',
entity.element: 'CustomerID'

 }]
CustomerId,
@Consumption.valueHelpDefinition: [{ 
entity.name: '/DMO/I_Carrier',
entity.element: 'AirlineID'

 }]
CarrierId,
@Consumption.valueHelpDefinition: [{ 
entity.name: '/DMO/I_Connection',
entity.element: 'ConnectionID',
additionalBinding: [{ localElement: 'CarrierId',
                      element: 'AirlineID' }]
 }]
ConnectionId,
FlightDate,
FlightPrice,
CurrencyCode,
@Consumption.valueHelpDefinition: [{ 
entity.name: '/DMO/I_Booking_Status_VH',
entity.element: 'BookingStatus'
 }]
BookingStatus,
LastChangedAt,
/* Associations */
_BookingStatus,
_BookSuppl: redirected to composition child YI_TR_BOOKINGSUPPL_PROCESSOR,
_Carrier,
_Connection,
_Customer,
_Travel: redirected to parent yi_tr_travel_processor

}
