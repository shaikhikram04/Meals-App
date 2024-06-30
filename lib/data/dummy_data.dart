import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeal = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Spaghetti with Tomato Sauce',
    imageUrl:
        'https://www.allrecipes.com/thmb/zHiRDzs-jfqUnHvMSy-0Lh8Q2hE=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/254517-spaghetti-sauce-with-fresh-tomatoes-3x2-79-609ce4edcafb4191b609180163fed92b.jpg',
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil sqme water — add salt to it once it boils.',
      'Put the spaghetti into the boiling water — they should be done in in about 8 to 10 minutes',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.',
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Toast Hawaii',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Toast_Hawaii_RZ.jpg/1280px-Toast_Hawaii_RZ.jpg',
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 2000 C'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    imageUrl:
        'https://www.eatingwell.com/thmb/0ufldqUg5bgMR9IVx0-Gd4c6S0k=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/3757723-7c4020ccc47240138323b9bc5b730e8d.jpg',
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion',
    ],
    duration: 45,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    imageUrl:
        'https://www.allrecipes.com/thmb/WMjA6SMY6rimw1mZh2qEk6sxkuQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/78117-wienerschnitzel-ddmfs-3X4-0200-ec06b882b575486ab7398957709413d2.jpg',
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil'
    ],
    steps: [
      'Pound the cutlets to ¼-inch thickness.',
      'Dip the cutlets in flour, then shake off the excess.',
      'Mix the eggs, cheese, milk, and seasonings in a bowl.',
      'Dip the cutlets in the egg mixture, then coat with bread crumbs.',
      'Refrigerate the coated cutlets for one hour or up to overnight.',
      'Cook the breaded cutlets until brown and transfer to a serving platter.',
      'Drizzle with pan juices and garnish with lemon slices.'
    ],
    duration: 60,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c1',
      'c2',
      'c5',
      'c10',
    ],
    title: 'Margherita Pizza',
    imageUrl:
        'https://cdn.loveandlemons.com/wp-content/uploads/2023/07/margherita-pizza-recipe-719x1024.jpg',
    ingredients: [
      '1 pizza dough',
      '1 cup tomato sauce',
      '200g fresh mozzarella',
      'Fresh basil leaves',
      'Olive oil',
      'Salt',
    ],
    steps: [
      'Preheat the oven to 475°F (245°C).',
      'Roll out the pizza dough and spread tomato sauce on it.',
      'Top with slices of fresh mozzarella.',
      'Bake for 10-15 minutes until the crust is golden and cheese is bubbly.',
      'Garnish with fresh basil leaves and a drizzle of olive oil.',
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c2', 'c5', 'c7', 'c10'],
    title: 'Avocado Toast with Poached Egg',
    imageUrl:
        'https://www.flora.com/en-gb/-/media/Project/Upfield/Brands/Flora/Flora-UK-New/Assets/Recipes/Sync-Images/7e9f089f-254e-4e28-87d0-23dcb68c1fe7.jpg?rev=0c54c1bea07a4ac0aa1abc217d037404',
    ingredients: [
      '1 ripe avocado',
      '2 slices of whole grain bread',
      '2 eggs',
      'Salt and pepper',
      'Lemon juice',
      'Optional: cherry tomatoes, red pepper flakes'
    ],
    steps: [
      'Toast the bread.',
      'Mash the avocado and season with salt, pepper, and lemon juice.',
      'Poach the eggs.',
      'Spread the avocado on the toast and top with poached eggs.',
      'Add optional toppings as desired.'
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm7',
    categories: ['c2', 'c5', 'c10'],
    title: 'Chicken Caesar Salad',
    imageUrl:
        'https://s23209.pcdn.co/wp-content/uploads/2023/01/220905_DD_Chx-Caesar-Salad_051-1024x1536.jpg',
    ingredients: [
      '2 chicken breasts',
      '1 romaine lettuce',
      '1/2 cup Caesar dressing',
      '1/4 cup grated Parmesan cheese',
      'Croutons',
      'Lemon juice',
      'Salt and pepper'
    ],
    steps: [
      'Grill or pan-fry the chicken breasts until cooked through.',
      'Chop the romaine lettuce.',
      'Slice the chicken and toss with lettuce, Caesar dressing, and Parmesan cheese.',
      'Add croutons and a squeeze of lemon juice.',
      'Season with salt and pepper.'
    ],
    duration: 20,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c2', 'c6', 'c8'],
    title: 'Thai Green Curry',
    imageUrl:
        'https://hot-thai-kitchen.com/wp-content/uploads/2022/05/green-curry-new-sq-2.jpg',
    ingredients: [
      '2 tbsp green curry paste',
      '1 can coconut milk',
      '300g chicken or tofu',
      '1 cup mixed vegetables (bell peppers, carrots, peas)',
      '1 tbsp fish sauce (or soy sauce for vegetarian)',
      '1 tbsp sugar',
      'Fresh basil'
    ],
    steps: [
      'Heat curry paste in a pan until fragrant.',
      'Add coconut milk and bring to a simmer.',
      'Add chicken or tofu and cook until done.',
      'Add mixed vegetables and cook until tender.',
      'Season with fish sauce (or soy sauce) and sugar.',
      'Garnish with fresh basil and serve with rice.'
    ],
    duration: 30,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c5', 'c7', 'c9', 'c10'],
    title: 'Crepes with Berries',
    imageUrl:
        'https://catzinthekitchen.com/wp-content/uploads/2013/08/Berry-Crepes-5.jpg.webp',
    ingredients: [
      '1 cup flour',
      '2 eggs',
      '1/2 cup milk',
      '1/2 cup water',
      '1/4 tsp salt',
      '2 tbsp butter, melted',
      'Fresh berries',
      'Powdered sugar',
      'Whipped cream'
    ],
    steps: [
      'Mix flour, eggs, milk, water, salt, and melted butter to make the crepe batter.',
      'Heat a lightly oiled pan and pour in the batter to make thin crepes.',
      'Cook until lightly browned on both sides.',
      'Serve with fresh berries, powdered sugar, and whipped cream.'
    ],
    duration: 30,
    complexity: Complexity.hard,
    affordability: Affordability.luxurious,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c6', 'c8', 'c10'],
    title: 'Vietnamese Spring Rolls',
    imageUrl:
        'https://themom100.com/wp-content/uploads/2024/01/vietnamese-spring-rolls-5580.jpg',
    ingredients: [
      'Rice paper wrappers',
      'Shrimp or tofu',
      'Rice noodles',
      'Fresh herbs (mint, cilantro, basil)',
      'Lettuce',
      'Carrot, julienned',
      'Cucumber, julienned',
      'Peanut sauce or hoisin sauce'
    ],
    steps: [
      'Prepare rice noodles according to package instructions.',
      'Soak rice paper wrappers in warm water until pliable.',
      'Place shrimp or tofu, rice noodles, herbs, lettuce, carrot, and cucumber on the wrapper.',
      'Roll tightly and serve with peanut sauce or hoisin sauce.'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm11',
    categories: ['c5', 'c9', 'c10'],
    title: 'Ratatouille',
    imageUrl:
        'https://www.allrecipes.com/thmb/xxEoPADWyOC5qyQHRMy-4HA5tDE=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/222006-disneys-ratatouille-DDMFS-4x3-36eb15843ab548a79e7aab761dac92e1.jpg',
    ingredients: [
      '1 eggplant',
      '1 zucchini',
      '1 yellow squash',
      '1 red bell pepper',
      '1 yellow bell pepper',
      '4 tomatoes',
      '1 onion',
      '2 cloves garlic',
      'Olive oil',
      'Fresh thyme',
      'Salt and pepper'
    ],
    steps: [
      'Slice eggplant, zucchini, yellow squash, bell peppers, and tomatoes.',
      'Sauté onion and garlic in olive oil until soft.',
      'Layer vegetables in a baking dish.',
      'Drizzle with olive oil, and season with thyme, salt, and pepper.',
      'Bake at 375°F (190°C) for 45 minutes until tender.'
    ],
    duration: 60,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm12',
    categories: ['c2', 'c5', 'c6', 'c8', 'c10'],
    title: 'Mango Sticky Rice',
    imageUrl:
        'https://www.allrecipes.com/thmb/vkOJBiZXz7nfXqok3-5B4peU0S0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/AR-150313-thai-sweet-sticky-rice-with-mango-khao-neeo-mamuang-ddmfs-4x3-hero-0da7a9b26cce4d07aea44f2f2b6abd95.jpg',
    ingredients: [
      '1 cup glutinous rice',
      '1 1/2 cups coconut milk',
      '1/2 cup sugar',
      '1/4 tsp salt',
      '2 ripe mangoes, sliced',
      'Sesame seeds (optional)'
    ],
    steps: [
      'Cook glutinous rice according to package instructions.',
      'In a saucepan, heat coconut milk, sugar, and salt until dissolved.',
      'Mix half of the coconut milk mixture with the cooked rice.',
      'Serve with sliced mangoes and drizzle the remaining coconut milk over the top.',
      'Garnish with sesame seeds if desired.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm13',
    categories: ['c1', 'c7'],
    title: 'Frittata',
    imageUrl:
        'https://www.spendwithpennies.com/wp-content/uploads/2023/02/How-to-Make-a-Frittata-SpendWithPennies-9-1024x1536.jpg',
    ingredients: [
      '6 large eggs',
      '1/4 cup milk',
      '1/2 cup grated Parmesan cheese',
      '1 cup cherry tomatoes, halved',
      '1 cup spinach',
      '1 small onion, chopped',
      '1 bell pepper, chopped',
      'Olive oil',
      'Salt and pepper'
    ],
    steps: [
      'Preheat the oven to 375°F (190°C).',
      'Whisk eggs, milk, Parmesan cheese, salt, and pepper.',
      'Sauté onion and bell pepper in olive oil until soft.',
      'Add spinach and tomatoes, and cook for a few minutes.',
      'Pour egg mixture over the vegetables.',
      'Cook on the stovetop until the edges set, then transfer to the oven and bake until the center is set.'
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm14',
    categories: ['c3', 'c7'],
    title: 'Breakfast Burger',
    imageUrl:
        'https://stephenlarosa.co/wp-content/uploads/2021/07/Breakfast-Burger.blog-1-1200x900.jpg',
    ingredients: [
      '1 beef patty',
      '1 hamburger bun',
      '1 slice of cheddar cheese',
      '1 fried egg',
      '2 strips of bacon',
      'Lettuce',
      'Tomato',
      'Ketchup',
      'Salt and pepper'
    ],
    steps: [
      'Cook the beef patty until desired doneness.',
      'Fry the bacon until crispy.',
      'Fry the egg until the yolk is cooked to your preference.',
      'Toast the hamburger bun.',
      'Assemble the burger with lettuce, tomato, cheddar cheese, bacon, fried egg, and ketchup.'
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm15',
    categories: ['c4'],
    title: 'Sauerbraten',
    imageUrl:
        'https://www.saveur.com/uploads/2012/10/10-230829-SAVEUR-MHALL-SAUERBRATEN-050-scaled.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=1440',
    ingredients: [
      '1 beef roast (about 3-4 pounds)',
      '2 cups red wine vinegar',
      '2 cups water',
      '1 large onion, sliced',
      '1 carrot, sliced',
      '2 bay leaves',
      '6 whole cloves',
      '6 juniper berries',
      '10 black peppercorns',
      '1 tbsp sugar',
      'Salt and pepper',
      '3 tbsp flour',
      '3 tbsp butter',
      '1/2 cup gingersnap cookies, crushed'
    ],
    steps: [
      'Marinate the beef roast in a mixture of vinegar, water, onion, carrot, bay leaves, cloves, juniper berries, peppercorns, sugar, salt, and pepper for 3-5 days.',
      'Remove the roast from the marinade and pat dry. Strain and reserve the marinade.',
      'Brown the roast in butter in a large pot.',
      'Add the reserved marinade, bring to a boil, and then simmer for 2-3 hours until tender.',
      'Remove the roast and keep warm.',
      'Strain the cooking liquid and thicken with flour and crushed gingersnaps to make the gravy.',
      'Serve sliced roast with the gravy.'
    ],
    duration: 180,
    complexity: Complexity.challenging,
    affordability: Affordability.luxurious,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm16',
    categories: ['c9'],
    title: 'Coq au Vin',
    imageUrl:
        'https://static01.nyt.com/images/2023/08/24/multimedia/MC-Coq-Au-Van-ctpm/MC-Coq-Au-Van-ctpm-master768.jpg?width=1280&quality=75&auto=webp',
    ingredients: [
      '1 whole chicken, cut into pieces',
      '200g bacon, chopped',
      '1 bottle red wine',
      '2 cups chicken broth',
      '1 onion, chopped',
      '2 cloves garlic, minced',
      '2 carrots, sliced',
      '1 cup mushrooms, sliced',
      '1 tbsp tomato paste',
      '1 bay leaf',
      'Fresh thyme',
      'Olive oil',
      'Salt and pepper'
    ],
    steps: [
      'Marinate the chicken in red wine overnight.',
      'Remove the chicken from the marinade and pat dry. Reserve the marinade.',
      'Brown the chicken pieces in olive oil in a large pot. Remove and set aside.',
      'Cook bacon until crispy, then add onion, garlic, carrots, and mushrooms and sauté until soft.',
      'Stir in tomato paste, bay leaf, and thyme.',
      'Return chicken to the pot, add reserved marinade and chicken broth.',
      'Simmer for 1-2 hours until chicken is tender.',
      'Remove bay leaf and thyme sprigs before serving.'
    ],
    duration: 120,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm17',
    categories: ['c1'],
    title: 'Lasagna',
    imageUrl:
        'https://thecozycook.com/wp-content/uploads/2022/04/Lasagna-Recipe.jpg',
    ingredients: [
      '500g ground beef',
      '9 lasagna noodles',
      '1 jar marinara sauce',
      '2 cups ricotta cheese',
      '2 cups shredded mozzarella cheese',
      '1/2 cup grated Parmesan cheese',
      '1 egg',
      '2 cloves garlic, minced',
      '1 onion, chopped',
      'Olive oil',
      'Salt and pepper'
    ],
    steps: [
      'Preheat the oven to 375°F (190°C).',
      'Cook the lasagna noodles according to package instructions.',
      'In a pan, sauté onion and garlic in olive oil until soft, then add ground beef and cook until browned. Add marinara sauce and simmer.',
      'In a bowl, mix ricotta cheese, egg, and half of the Parmesan cheese.',
      'In a baking dish, spread a layer of meat sauce, followed by a layer of noodles, and then a layer of the ricotta mixture. Repeat layers.',
      'Top with mozzarella cheese and the remaining Parmesan cheese.',
      'Bake for 45 minutes until bubbly and golden.'
    ],
    duration: 75,
    complexity: Complexity.hard,
    affordability: Affordability.pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
];

List<Meal> getCategoryMeals(String categoryId) {
  return dummyMeal
      .where((meal) => meal.categories.contains(categoryId))
      .toList();
}
