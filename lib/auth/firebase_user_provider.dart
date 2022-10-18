import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class EnergyControlFirebaseUser {
  EnergyControlFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

EnergyControlFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EnergyControlFirebaseUser> energyControlFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<EnergyControlFirebaseUser>(
      (user) {
        currentUser = EnergyControlFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
