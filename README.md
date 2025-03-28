# React Modal Component

Un composant Modal léger, accessible et facile à utiliser pour vos applications React.

## Description

Ce composant Modal permet d'afficher un contenu dans une fenêtre modale qui s'affiche au-dessus du reste de l'application. Il gère automatiquement :

- L'affichage/masquage avec animation
- Le focus et l'accessibilité (trappage du focus)
- La fermeture par touche Échap ou clic à l'extérieur
- Un design simple et personnalisable

## Installation

```bash
npm install @rogue06/react-modal
```

## Utilisation

```jsx
import React, { useState } from "react";
import Modal from "@rogue06/react-modal";

function App() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <div>
      <button onClick={() => setIsOpen(true)}>Ouvrir la modal</button>

      <Modal isOpen={isOpen} onClose={() => setIsOpen(false)}>
        <h2>Titre de la modal</h2>
        <p>Contenu de la modal...</p>
        <button onClick={() => setIsOpen(false)}>Fermer</button>
      </Modal>
    </div>
  );
}
```

## Props (Propriétés)

| Prop                  | Type     | Default  | Description                                                                        |
| --------------------- | -------- | -------- | ---------------------------------------------------------------------------------- |
| `isOpen`              | boolean  | required | Contrôle si la modal est visible ou non                                            |
| `onClose`             | function | required | Fonction appelée quand l'utilisateur ferme la modal (clic en dehors, touche Échap) |
| `children`            | node     | required | Le contenu à afficher dans la modal                                                |
| `className`           | string   | ''       | Classes CSS supplémentaires à appliquer à la modal                                 |
| `overlayClassName`    | string   | ''       | Classes CSS supplémentaires à appliquer à l'overlay (fond)                         |
| `closeOnOverlayClick` | boolean  | true     | Si true, la modal se ferme quand l'utilisateur clique sur l'overlay                |
| `closeOnEscape`       | boolean  | true     | Si true, la modal se ferme quand l'utilisateur appuie sur Échap                    |

## Personnalisation

Vous pouvez personnaliser l'apparence de la modal en utilisant CSS. Voici les classes par défaut :

- `.modal-overlay` - Le fond semi-transparent derrière la modal
- `.modal-container` - Le conteneur de la modal
- `.modal-content` - Le contenu de la modal
- `.modal-close-button` - Le bouton de fermeture (si activé)

## Accessibilité

Ce composant est conçu en suivant les pratiques WAI-ARIA pour les dialogues modaux :

- Utilise le role="dialog"
- Gère correctement le focus
- Supporte la navigation au clavier

## Fonctionnalités

- Fermeture par touche Echap
- Fermeture en cliquant à l'extérieur de la modal
- Animation fluide d'ouverture/fermeture
- Empêche le défilement du corps de la page quand la modal est ouverte
- Design responsive
- Personnalisable via CSS

## Compatibilité

Ce composant est compatible avec React 16.8.0 et versions supérieures.

## Licence

MIT
