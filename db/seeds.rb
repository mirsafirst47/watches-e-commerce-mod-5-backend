arrayOfWatches = [
    {
        name: "Astronomia Tourbillon",
        brand: "Jacob & Co",
        color: "Black Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_680793122.png", 
        price: 1015000
    },
    {
        name: "Galigula Tourbillon Baguette",
        brand: "Jacob & Co",
        color: "White Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_449058475.png",
        price: 1643114
    },
    {
        name: "Bugatti Chiron Tourbillon",
        brand: "Jacob & Co",
        color: "Black",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_974396348.png",
        price: 280000
    },
    {
        name: "Oil Pump",
        brand: "Jacob & Co",
        color: "Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_730053739.png",
        price: 380000
    },
    {
        name: "Astronomia Solar Planet",
        brand: "Jacob & Co",
        color: "Sapphire",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_945489025.png",
        price: 1015000
    },
    {
        name: "Astronomia Tourbillon Black Ceramic",
        brand: "Jacob & Co",
        color: "Black and Red",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_120738478.png",
        price: 1000000
    },
    {
        name: "Astronomia Clarity",
        brand: "Jacob & Co",
        color: "Rose Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_419008333.png",
        price: 800000
    },
    {
        name: "Brilliant Flying Tourbillon Purple Degrade",
        brand: "Jacob & Co",
        color: "Assorted Diamonds",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_958101151.png",
        price: 400000
    },
    {
        name: "Epic SF24 Tourbillon Baguette",
        brand: "Jacob & Co",
        color: "Silver",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_467113673.png",
        price: 600500
    },
    {
        name: "Brilliant Art Deco Ruby",
        brand: "Jacob & Co",
        color: "Rose Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_748320252.png",
        price: 757525
    },
    {
        name: "Rasputin Tourbillon",
        brand: "Jacob & Co",
        color: "White Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_179352798.png",
        price: 2527861
    },
    {
        name: "Astronomia Tableclock",
        brand: "Jacob & Co",
        color: "Rose Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_935861882.png",
        price: 160000
    },
    {
        name: "Caviar Tourbillon Diamond Bracelet",
        brand: "Jacob & Co",
        color: "Ruby",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_191826741.png",
        price: 1820063
    },
    {
        name: "Fleurs de Jardin Sapphire",
        brand: "Jacob & Co",
        color: "Pink Sapphire",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_779188405.png",
        price: 492394
    },
    {
        name: "Brilliant Watch Pendant",
        brand: "Jacob & Co", 
        color: "Rose Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_859051517.png",
        price: 87115
    },
    {
        name: "Fleurs de Jardin",
        brand: "Jacob & Co", 
        color: "Rose Gold",
        image_url: "https://image.dynamixse.com/fit/525x425/q80.webp.png-lossy-85/https://dynamix-cdn.s3.amazonaws.com/jacobandcocom/jacobandcocom_182403077.png",
        price: 450000
    }
    
]

Watch.create(arrayOfWatches)

sam = User.create(username: "Sam", password: "123")
katy = User.create(username: "Katy", password: "1234")

past_cart1 = Cart.create(user: sam, history: true)
past_cart2 = Cart.create(user: sam, history: true)
current_cart = sam.carts.create(history: false)

3.times do 
    Transaction.create(cart: past_cart1, watch: Watch.all.sample)
end

2.times do 
    Transaction.create(cart: past_cart2, watch: Watch.all.sample)
    Transaction.create(cart: current_cart, watch: Watch.all.sample)
end
