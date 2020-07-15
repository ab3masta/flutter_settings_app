import 'package:flutter/material.dart';

class PlayStoreSettingsPage extends StatefulWidget {
  @override
  _PlayStoreSettingsPageState createState() => _PlayStoreSettingsPageState();
}

class _PlayStoreSettingsPageState extends State<PlayStoreSettingsPage> {
  double width, height;
  bool _switchTheme = true;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 17.0, left: 10.0),
              width: width,
              height: 80,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[300]))),
              child: Center(
                child: Row(children: <Widget>[
                  Icon(Icons.arrow_back, color: Colors.black),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Paramètres',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500))
                ]),
              ),
            ),
            Container(
              width: width,
              height: height - 80,
              color: Colors.grey[100],
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("Paramètres généraux",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text("Notifications"),
                    subtitle: Text("Gérer les paramètres de notification"),
                  ),
                  ListTile(
                    title: Text(
                        "Préférences relatives au téléchargement d'applis"),
                    subtitle: Text("Via n'importe quel réseau"),
                  ),
                  ListTile(
                    title: Text("Mise à jour automatique des d'applis"),
                    subtitle: Text(
                        "Ne pas mettre à jour automatiquement les applications"),
                  ),
                  ListTile(
                    title: Text("Lire automatiquement les vidéos"),
                    subtitle: Text(
                        "Lire automatiquement les videos via le Wi-Fi uniquement"),
                  ),
                  ListTile(
                    title: Text("Thème"),
                    subtitle: Text("Clair"),
                    trailing: Switch(
                        value: this._switchTheme,
                        onChanged: (bool value) {
                          setState(() {
                            this._switchTheme = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Ajouter l'icone à l'ecran d'accueil"),
                    subtitle: Text("Pour Les nouvelles applications"),
                  ),
                  ListTile(
                    title: Text("Effacer l'historique des recherches locales"),
                    subtitle: Text(
                        "Supprimer les recherches que vous avez affectuées à partir de cet apparieil"),
                  ),
                  ListTile(
                    title: Text("Préférences Google Play"),
                    subtitle: Text(
                        "Supprimer l'historique de votre liste de souhaits,du porgramme Beta et d'autres listes"),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(50.0),
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, bottom: 15.0, top: 15.0),
                    child: Text("Commandes utilisateur",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text("Controle parental"),
                    subtitle: Text("Désactivé"),
                  ),
                  ListTile(
                    title: Text("Exiger l'authentification pour les achats"),
                    subtitle: Text(
                        "Pour tous les achats via Google Play sur cet appareil"),
                  ),
                  ListTile(
                    title: Text("Google Play Instant"),
                    subtitle: Text(
                        "Utiliser des applications et des jeux sans avoir à les installer"),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(50.0),
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, bottom: 15.0, top: 15.0),
                    child: Text("A propos",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    title: Text("Licences Open Source"),
                    subtitle: Text(
                        "Informations sur la licence pour les logiciels Open Source"),
                  ),
                  ListTile(
                    title: Text("Version de Play Store"),
                    subtitle: Text("Version : 20.7.16-all [0] [PR] 317546459"),
                  ),
                  ListTile(
                    title: Text("Certification Play Protect"),
                    subtitle: Text("L'appareil est certifié"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
