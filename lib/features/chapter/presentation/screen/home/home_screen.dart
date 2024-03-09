import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodly/features/chapter/presentation/bloc/chapter__bloc_state.dart';
import 'package:foodly/features/chapter/presentation/bloc/chapter_bloc.dart';
import 'package:foodly/features/chapter/presentation/bloc/chapter_bloc_event.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Dispatch an event to fetch data when the screen initializes
    BlocProvider.of<HomeScreenBloc>(context).add(HomeScreenDataFetchEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          if (state is HomeScreenLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeScreenSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: state.chapters.length,
              itemBuilder: (context, index) {
                final chapter = state.chapters[index];
                return ListTile(
                  title: Image.network(chapter.imageUrl!),
                  // You can add more widgets here to display additional information
                );
              },
            );
          } else if (state is HomeScreenError) {
            return Center(
              child: Text('Error: ${state.message}'),
            );
          } else {
            return Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
    );
  }
}
