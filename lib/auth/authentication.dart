import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projeto_sindrome_down/model/list_topics.dart';
import 'package:projeto_sindrome_down/model/topic.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;

  //aqui vou colocar a instancia da lista para upar pro firebase
  List<Topic> listTopics1 = ListTopics(id: 1).selectList();
  List<Topic> listTopics2 = ListTopics(id: 2).selectList();
  List<Topic> listTopics3 = ListTopics(id: 3).selectList();
  List<Topic> listTopics4 = ListTopics(id: 4).selectList();

  Future<String?> signUp({
    required String email,
    required String password,
    required String name,
    required String mobilephone,
  }) async {
    try {
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');
      await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then(
            (data) => {
              users.doc(data.user!.uid).set(
                {
                  'name': name,
                  'email': email,
                  'mobilephone': mobilephone,
                  'listTopics1': listTopics1.map((x) => x.toMap()).toList(),
                  'listTopics2': listTopics2.map((x) => x.toMap()).toList(),
                  'listTopics3': listTopics3.map((x) => x.toMap()).toList(),
                  'listTopics4': listTopics4.map((x) => x.toMap()).toList()
                },
              ),
            },
          );

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> signOut() async {
    try {
      await _auth.signOut();
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> updateTopic() async {
    try {
      CollectionReference userRef =
          FirebaseFirestore.instance.collection('users');

      await userRef.doc(_auth.currentUser!.uid).update(
        {
          'listTopics1': listTopics1.map((x) => x.toMap()).toList(),
          'listTopics2': listTopics2.map((x) => x.toMap()).toList(),
          'listTopics3': listTopics3.map((x) => x.toMap()).toList(),
          'listTopics4': listTopics4.map((x) => x.toMap()).toList()
        },
      );

      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }
}
