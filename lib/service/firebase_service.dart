


import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  Future<User?> signUpWithMobileNumber(String number , String username)
  async {
    try
    {
      UserCredential credential = await firebaseAuth.createUserWithEmailAndPassword(email: number, password: username);
      return credential.user;  
    }
    catch (e)
    {
      print("Some Error $e");
    }
    return null;
    
  }

  Future<User?> signInWithEmailAndPassword(String email , String password)
  async {
    try
    {
      UserCredential credential = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch (e)
    {
      print("Some Error $e");
    }
    return null;

  }
}