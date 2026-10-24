import:'package:flutter/material.dart';
class parametresscreen extends StatelessWidget{
    const parametresscreen({super.key});

    void afficherMessage(BuildContext context,String message){
        ScaffoldMessenger.of(context)
           .showSnackbar(Snackbar(content:texte (message)));
    }
}
@override
widget build (BuildContext context){
    return Scaffold(
        appBar:appBar(title:const texte('parametre')),
        body:listview()
        padding: const EdgeInsets.all(8),
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Mon profil'),
            subtitle: const Text('Nom, e-mail, mot de passe'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => afficherMessage(context, 'Profil sélectionné'),
          ),
          ListTile(
            tileColor: Colors.blue.shade50,
            iconColor: Colors.blue,
            textColor: Colors.black87,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () =>
                afficherMessage(context, 'Notifications sélectionnées'),
          ),
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Langue'),
            subtitle: Text('Français'),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
            subtitle: Text('MaBiblio - Version 1.0'),
            isThreeLine: false,
          ),
          ListTile(
            leading: const Icon(Icons.restart_alt),
            title: const Text('Réinitialiser ma bibliothèque'),
            onTap: () {
              afficherMessage(
                context,
                'La réinitialisation sera disponible après intégration du service JSON.',
              );
            },
          ),
        ],
      ),
    );
  }
}

    
