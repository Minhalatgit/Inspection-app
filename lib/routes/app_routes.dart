import 'package:flutter/material.dart';
import 'package:inspection_app/ui/checklist.dart';
import 'package:inspection_app/ui/document.dart';
import 'package:inspection_app/ui/info.dart';
import 'package:inspection_app/ui/login_view.dart';
import 'package:inspection_app/ui/home_view.dart';
import 'package:inspection_app/ui/map.dart';
import 'package:inspection_app/ui/my_task.dart';
import 'package:inspection_app/ui/permit_details.dart';
import 'package:inspection_app/ui/process_attachment.dart';
import 'package:inspection_app/ui/process_checklist.dart';
import 'package:inspection_app/ui/result.dart';
import 'package:inspection_app/ui/search_folder.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static const String LOGIN_VIEW = "/login_view";
  static const String HOME_VIEW = "/home_view";
  static const String MY_TASK = "/my_task";
  static const String PROCESS_DETAILS = "/process_details";
  static const String PROCESS_DOCUMENT = "/process_document";
  static const String PROCESS_ATTACHMENT = "/process_attachment";
  static const String PROCESS_CHECKLIST = "/process_checklist";
  static const String SEARCH_FOLDER = "/search_folder";
  static const String INFO = "/info";
  static const String CHECKLIST = "/checklist";
  static const String RESULT = "/result";
  static const String MAP = "/map";

  static const String CALENDAR = "/my_task";
  static const String DRAFT_EMPTY = "/draft_empty";

  Route getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case LOGIN_VIEW:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: LoginView(),
          );
        }
      case HOME_VIEW:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: HomeView(),
          );
        }
      case MY_TASK:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: MyTask(),
          );
        }
      case PROCESS_DETAILS:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: PermitDetails(),
          );
        }
      case PROCESS_DOCUMENT:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: Document(),
          );
        }
      case PROCESS_ATTACHMENT:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: ProcessAttachment(),
          );
        }
      case PROCESS_CHECKLIST:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: ProcessChecklist(),
          );
        }
      case SEARCH_FOLDER:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: SearchFolder(),
          );
        }
      case INFO:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: Info(),
          );
        }
      case CHECKLIST:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: Checklist(),
          );
        }
      case RESULT:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: Result(),
          );
        }
      case MAP:
        {
          return PageTransition(
            type: PageTransitionType.fade,
            settings: routeSettings,
            duration: Duration(milliseconds: 300),
            child: Map(),
          );
        }
      default:
        {
          return MaterialPageRoute<void>(
            settings: routeSettings,
            builder: (BuildContext context) => LoginView(),
            fullscreenDialog: false,
          );
        }
    }
  }
}
