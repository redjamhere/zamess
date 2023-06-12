import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

import 'package:mesapp/src/utils/size_config.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Enter your phone number",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Please confirm your region and enter your phone number",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).secondaryHeaderColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Pick your region",
                          prefixIcon: Icon(
                            Icons.public,
                            size: 40,
                          )),
                      readOnly: true,
                      onTap: () => showCountryPicker(
                          useSafeArea: true,
                          context: context,
                          showPhoneCode: true,
                          showWorldWide: false,
                          countryListTheme: CountryListThemeData(
                              flagSize: 0,
                              bottomSheetHeight:
                                  SizeConfig.blockSizeVertical! * 50),
                          onSelect: (v) => print(v)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(prefixText: "+63"),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
