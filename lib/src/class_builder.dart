import 'package:build/build.dart';
import 'package:path/path.dart' as p;

import 'node.dart';

class ClassBuilder implements Builder {
	@override
	Map<String, List<String>> get buildExtensions {
		return const <String, List<String>>{
			'.json': <String>['classes.g.dart']
		};
	}

    @override
    Future<void> build(BuildStep buildStep) async {
        final StringBuffer result = StringBuffer();

      final classNode = ClassNode.fromJson({'name':'test'});
      result.writeln(classNode);
        
        if (result.isNotEmpty) {
          await buildStep.writeAsString(
              AssetId(buildStep.inputId.package,
                  p.url.join('lib', 'classes.g.dart')),
				result.toString());
        }
    }
}
