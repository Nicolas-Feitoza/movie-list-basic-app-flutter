import 'package:flutter/material.dart';
import 'package:myapp/data/movies_data.dart';
import 'package:myapp/routes/app_routes.dart';

class CategoriesScreen extends StatelessWidget{
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Categories'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: (){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2
          ),
          itemCount: moviesByCategory.keys.length,
          itemBuilder: (context, index) {
            final category = moviesByCategory.keys.elementAt(index);
            return AnimatedContainer(
              duration: Duration(milliseconds: 200 + (index * 100)),
              curve: Curves.easeInOut,
              child: _buildCategoryCard(context, category),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String category) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context, 
            AppRoutes.moviesScreen,
            arguments: category,
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.secondaryContainer,
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _getCategoryIcon(category),
                  size: 48,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(height: 12),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  '${moviesByCategory[category]?.length ?? 0} movies',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer.withAlpha(204),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Action':
        return Icons.local_fire_department;
      case 'Comedy':
        return Icons.sentiment_very_satisfied;
      case 'Drama':
        return Icons.theater_comedy;
      case 'Science Fiction':
        return Icons.rocket_launch;
      default:
        return Icons.movie;
    }
  }
}