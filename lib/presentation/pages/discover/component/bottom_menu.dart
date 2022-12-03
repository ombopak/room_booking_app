import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thengoding/presentation/pages/discover/discover_cubit.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Container(
      height: 96.0.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0.r),
          topRight: Radius.circular(16.0.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenu(
            onTap: () => cubit.changeSelectedIndex(0),
            icon: Icons.location_on,
            title: 'Trips',
            isSelected: cubit.state.selectedIndex == 0,
          ),
          _buildMenu(
            onTap: () => cubit.changeSelectedIndex(1),
            icon: Icons.favorite,
            title: 'Favorite',
            isSelected: cubit.state.selectedIndex == 1,
          ),
          _buildMenu(
            onTap: () => cubit.changeSelectedIndex(2),
            icon: Icons.settings,
            title: 'Setting',
            isSelected: cubit.state.selectedIndex == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildMenu({
    required VoidCallback onTap,
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : Colors.grey,
          ),
          SizedBox(height: 8.0.h),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
