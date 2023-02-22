import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:valorant_app_test/widgets/agents_list.dart';
import '../cubit/characters_cubit.dart';
import '../data/models/character_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CharacterModel> characters = [];
  List<CharacterModel> controllers = [];
  List<CharacterModel> duelists = [];
  List<CharacterModel> initiators = [];
  List<CharacterModel> sentinels = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<CharactersCubit, CharactersState>(
        listener: createListener,
        builder: createBuilder,
      ),
    );
  }

  @override
  void initState() {
    // context.read<CharactersCubit>().getCharacters();
    final cubiData = context.read<CharactersCubit>();
    if (cubiData.state is CharactersLoaded) {
      characters = (cubiData.state as CharactersLoaded).listCharacters;
    }
    super.initState();
  }

  void createListener(BuildContext context, CharactersState state) {
    if (state is CharactersError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.message)));
    }
  }

  void startSearching() {
    setState(() {
    });
  }

  Widget createBuilder(context, state) {
    if (state is CharactersLoading) {
      Center(
          child: Container(
        color: Colors.red,
        width: Size.infinite.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'lib/assets/icon_valorant_480.svg',
              height: 200,
              width: 200,
            ),
            const CircularProgressIndicator(
              color: Color(0xFF53212B),
            ),
          ],
        ),
      ));
    }
    if (state is CharactersLoaded) {
      return screen(state.listCharacters);
    }
    return const Text('Error');
  }

  screen(state) {
    return Container(
      color: const Color(0xFFBD3944),
      child: Center(
        child: Wrap(
          children: [
            card(controllersList(state), controllers[0].role.displayName,
                controllers[0].role.displayIcon),
            card(duelistsList(state), duelists[0].role.displayName,
                duelists[0].role.displayIcon),
            card(initiatorsList(state), initiators[0].role.displayName,
                initiators[0].role.displayIcon),
            card(sentinelsList(state), sentinels[0].role.displayName,
                sentinels[0].role.displayIcon),
          ],
        ),
      ),
    );
  }

  card(owo, displayName, displayIcon) {
    return GestureDetector(
      onTap: (() => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => owo))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                displayIcon,
                width: 0.4 * MediaQuery.of(context).size.width,
                height: 0.4 * MediaQuery.of(context).size.width,
              ),
            ),
            Text(
              displayName,
              style: const TextStyle(
                  color: Color(0xFFFFFBF5),
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  controllersList(characters) {
    controllers = characters
        .where((x) => x.role.id == '4ee40330-ecdd-4f2f-98a8-eb1243428373')
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(controllers[0].role.displayName + 'es'),
          centerTitle: true,
          backgroundColor: const Color(0xFFBD3944),
        ),
        body: AgentsList(
          data: controllers,
          count: 1,
        ));
  }

  duelistsList(characters) {
    duelists = characters
        .where((x) => x.role.id == 'dbe8757e-9e92-4ed4-b39f-9dfc589691d4')
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(duelists[0].role.displayName + 's'),
          centerTitle: true,
          backgroundColor: const Color(0xFFBD3944),
        ),
        body: AgentsList(
          data: duelists,
          count: 1,
        ));
  }

  initiatorsList(characters) {
    initiators = characters
        .where((x) => x.role.id == '1b47567f-8f7b-444b-aae3-b0c634622d10')
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(initiators[0].role.displayName + 'es'),
        centerTitle: true,
        backgroundColor: const Color(0xFFBD3944),
      ),
      body: AgentsList(
        data: initiators,
        count: 1,
      ),
    );
  }

  sentinelsList(characters) {
    sentinels = characters
        .where((x) => x.role.id == '5fc02f99-4091-4486-a531-98459a3e95e9')
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(sentinels[0].role.displayName + 's'),
          centerTitle: true,
          backgroundColor: const Color(0xFFBD3944),
        ),
        body: AgentsList(
          data: sentinels,
          count: 1,
        ));
  }
}
