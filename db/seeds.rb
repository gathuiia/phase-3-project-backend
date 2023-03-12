puts "🌱 Seeding spices..."

# Seed your database here
c1 = Cocktail.create(
    cocktails_id: 001,
    name: "Whiskey Sour",
    style: "Classics",
    ingredients: "2 ounces (4 tablespoons) whiskey, 
    1 ounce (2 tablespoons) fresh lemon juice, 
    3/4 ounce (1.5 tablespoons) pure maple syrup (or simple syrup), 
    Garnish: Orange peel and a cocktail cherry,
    Ice, for serving",
    instructions: "Add the ingredients to a cocktail shaker. Fill with a handful of ice and shake until very cold. 
    Strain the drink into a glass. Serve with ice, an orange peel and a cocktail cherry."
)

puts "✅ Done seeding!"
