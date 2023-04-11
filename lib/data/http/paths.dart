
class Paths {

  //  API ENDPOINTS

  //auth
  static const String login = 'api/v2/user-auth/';
  static const String signup = 'route/v2/addcustomer';



  static const String flightCalenderSearch = 'ibe/flight/search/dates';
  static const String flightDailySearch = 'ibe/flight/search';
  static const String flightAncillaries = 'ibe/flight/ancillaries';
  static const String startFlightBooking = 'ibe/flight/booking/start';
  static const String completeFlightBooking = 'ibe/flight/booking/complete';
  static const String flightBookingUpdate = 'ibe/flight/booking/edit';
  static const String flightBookingInfo = 'ibe/flight/booking/info';

  static const String issueFlightTickets =  'ibe/flight/booking/complete';
  static const String flightCheckIn = 'ibe/flight/check-in';
  static const String flightCheckInSearch = 'ibe/flight/check-in/search';

  static const String paymentVerification =  'payment';
  static const String initiatePayment = 'payment';
  static const String systemAuxiliary = 'misc/ancillaries';
  static const String locationInfo = 'misc/location-info';

}
