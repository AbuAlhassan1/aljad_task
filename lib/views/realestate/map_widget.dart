import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatefulWidget {
  final LatLng location;
  const MapWidget({super.key, required this.location});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  final MapController mapController = MapController();
  bool isLoading = true;
  bool showLoading = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Map View -- S t a r t --
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            center: widget.location,
            zoom: 15,
            maxZoom: 20,
            minZoom: 3,
            keepAlive: true,
            enableScrollWheel: true,
            onMapReady: () async {
              setState(() => isLoading = false);
              await Future.delayed(const Duration(milliseconds: 400)).then((value) => setState(() => showLoading = false));
            },
            onMapEvent: (x) {
              log(x.source.toString());
            },
          ),
          children: [
            TileLayer(urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
            MarkerLayer(
              markers: [
                Marker(
                  // width: 300.0.w,
                  // height: 240.0.w,
                  rotate: true,
                  point: widget.location,
                  builder: (ctx) => const Icon(Icons.location_on_rounded, color: Colors.red)
                ),
              ]
            )
          ],
        ),
        // Map View -- E n d --

        Align(
          alignment: const AlignmentDirectional(-1, 1),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 20.w, bottom: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MapButtons(icon: const Icon(Icons.add), onTap: () {
                  mapController.move(mapController.center, mapController.zoom >= 18 ? 18 : mapController.zoom + 1);
                  log(mapController.zoom.toString());
                }),
                SizedBox(height: 10.h),
                MapButtons(icon: const Icon(Icons.remove_outlined), onTap: () => mapController.move(mapController.center, mapController.zoom - 1)),
              ],
            ),
          ),
        ),

        showLoading ?
        AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOutCubic,
          color: isLoading ? Colors.black : Colors.transparent,
          child: const Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1)),
        ) : const SizedBox()
      ],
    );
  }
}


class MapButtons extends StatelessWidget {
  final Widget icon;
  final Function? onTap;
  const MapButtons({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.w),
        boxShadow: const [BoxShadow(
          color: Colors.black,
          blurRadius: 10,
          spreadRadius: -5
        )]
      ),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            if(onTap != null){
              onTap!();
            }
          },
          child: SizedBox(
            width: 50.w, height: 50.w,
            child: Center(
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}