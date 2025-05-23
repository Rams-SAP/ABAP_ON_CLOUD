@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Suppliment as as child of composition tree'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity yi_tr_booksuppl as select from /dmo/booksuppl_m

association to parent yi_tr_booking as _Booking on
$projection.BookingId = _Booking.BookingId and
$projection.TravelId = _Booking.TravelId

association[1..1] to yi_tr_travel as _Travel on
$projection.TravelId = _Travel.TravelId

association[1..1] to /DMO/I_Supplement as _Product on
$projection.SupplementId = _Product.SupplementID

association[1..*] to /DMO/I_SupplementText as _SupplementText on
$projection.SupplementId = _SupplementText.SupplementID
{
key travel_id as TravelId,
key booking_id as BookingId,
key booking_supplement_id as BookingSupplementId,
supplement_id as SupplementId,
@Semantics.amount.currencyCode: 'CurrencyCode'
price as Price,
currency_code as CurrencyCode,
@Semantics.systemDateTime.lastChangedAt:true
last_changed_at as LastChangedAt,
_Travel,
_Product,
_SupplementText,
_Booking 
}
