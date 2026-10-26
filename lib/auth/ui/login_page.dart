import 'package:counter_example/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  new({super.key});
  TextEditingController phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                TextField(controller: phone),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is Success) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WaitingForOtp(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("YAA Welcome"),
                          backgroundColor: Colors.green,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                    if (state is ErrorPage) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Sorry You Should try again"),
                          backgroundColor: Colors.red,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return state is Loading
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () {
                              context.read<AuthBloc>().add(
                                RequestOTP(phone: phone.text),
                              );
                            },
                            child: Text("Send"),
                          );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class WaitingForOtp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar());
  }
}
