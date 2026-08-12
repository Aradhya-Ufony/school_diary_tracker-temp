import 'package:flutter_test/flutter_test.dart';
import 'package:school_diary_tracker/core/utils/validators.dart';

void main() {
  group('Validators Country-Specific Validation Tests', () {
    test('isValidPhoneForCountry validation checks', () {
      // US/CA/IN: 10 digits
      expect(Validators.isValidPhoneForCountry('1234567890', countryCode: 'US'), isTrue);
      expect(Validators.isValidPhoneForCountry('123456789', countryCode: 'US'), isFalse);
      expect(Validators.isValidPhoneForCountry('12345678901', countryCode: 'US'), isFalse);
      expect(Validators.isValidPhoneForCountry('123-456-7890', countryCode: 'US'), isTrue);
      
      expect(Validators.isValidPhoneForCountry('9876543210', countryCode: 'IN'), isTrue);
      expect(Validators.isValidPhoneForCountry('987654321', countryCode: 'IN'), isFalse);

      // IL: 9 or 10 digits
      expect(Validators.isValidPhoneForCountry('123456789', countryCode: 'IL'), isTrue);
      expect(Validators.isValidPhoneForCountry('1234567890', countryCode: 'IL'), isTrue);
      expect(Validators.isValidPhoneForCountry('12345678', countryCode: 'IL'), isFalse);

      // Generic other countries: 6 to 15 digits
      expect(Validators.isValidPhoneForCountry('123456', countryCode: 'GB'), isTrue);
      expect(Validators.isValidPhoneForCountry('123456789012345', countryCode: 'GB'), isTrue);
      expect(Validators.isValidPhoneForCountry('12345', countryCode: 'GB'), isFalse);
    });

    test('isEmailOrValidPhone check', () {
      expect(Validators.isEmailOrValidPhone('test@example.com', countryCode: 'US'), isTrue);
      expect(Validators.isEmailOrValidPhone('1234567890', countryCode: 'US'), isTrue);
      expect(Validators.isEmailOrValidPhone('+11234567890', countryCode: 'US'), isTrue); // manual prefix
      expect(Validators.isEmailOrValidPhone('12345', countryCode: 'US'), isFalse);
    });
  });
}
