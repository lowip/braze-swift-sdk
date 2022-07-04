<p align="center">
  <img width="480" alt="Braze Logo" src=".github/assets/logo-light.png#gh-light-mode-only" />
  <img width="480" alt="Braze Logo" src=".github/assets/logo-dark.png#gh-dark-mode-only" />
</p>

# Braze Swift SDK (Early Access)

- [Braze User Guide](https://www.braze.com/docs/user_guide/introduction/ "Braze User Guide")
- [Braze Swift SDK Documentation](https://braze-inc.github.io/braze-swift-sdk)

## Version Information
- The Braze Swift SDK supports
  - iOS 10.0+
  - Mac Catalyst 13.0+
- Xcode 13.2.1 (13C100) or newer

## Libraries

<!-- Table generated with https://www.tablesgenerator.com/markdown_tables -->

|                                                                                                                                                                                                                                 |  iOS  | macCatatyst |     tvOS      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :---: | :---------: | :-----------: |
| **BrazeKit**</br> _Main SDK library providing support for analytics and push notifications._                                                                                                                                    |   ✅   |      ✅      |       ✅       |
| **BrazeUI**</br> _Braze-provided user interface library for in-app messages._                                                                                                                                                   |   ✅   |      ✅      |      n/a      |
| **BrazeLocation**</br> _Location library providing support for location analytics and geofence monitoring._                                                                                                                     |   ✅   |      ✅      | ✅<sup>1</sup> |
| **BrazeNotificationService**</br> _Notification service extension library providing support for [ Rich Push notifications ]( https://www.braze.com/docs/user_guide/message_building_by_channel/push/ios/rich_notifications/ )._ |   ✅   |      ✅      |      n/a      |
| **BrazePushStory**</br> _Notification content extension library providing support for [ Push Stories ]( https://www.braze.com/docs/user_guide/message_building_by_channel/push/advanced_push_options/push_stories/ )._          |   ✅   |      ✅      |      n/a      |

<sup>1</sup> _Geofence monitoring not supported on tvOS_

## Package Managers
- Swift Package Manager
- CocoaPods

## Examples

Explore our [examples project](/Examples) which showcases multiple features' integrations.

## Questions?

If you have questions, please contact [support@braze.com](mailto:support@braze.com).
