# frozen_string_literal: true

require 'faker'

admin = User.create(email: 'admin@gmail.com', password: '123456', admin: 't')

#table categories

women = Category.create(title: 'Women', bytitle: 'women', keywords: 'women', description: 'for women')
rings2 = Category.create(title: 'Rings', bytitle: 'rings2', keywords: 'rings', description: 'rings', parent: women)
earrings2 = Category.create(title: 'Earrings', bytitle: 'earrings2', keywords: 'earrings', description: 'earrings', parent: women)
swarovski = Category.create(title: 'Swarovski', bytitle: 'swarovski', keywords: 'swarovski', description: 'swarovski', parent: rings2)
sokolov = Category.create(title: 'Sokolov', bytitle: 'sokolov', keywords: 'sokolov', description: 'sokolov', parent: earrings2)

men = Category.create(title: 'Men', bytitle: 'men', keywords: 'men', description: 'for men')
rings1 = Category.create(title: 'Rings', bytitle: 'rings1', keywords: 'rings', description: 'electronic', parent: men)
bracelets1 = Category.create(title: 'Bracelets', bytitle: 'bracelets1', keywords: 'bracelets1', description: 'bracelets', parent: men)
miansai = Category.create(title: 'Miansai', bytitle: 'miansai', keywords: 'miansai', description: 'miansai', parent: bracelets1)
tiffany = Category.create(title: 'Tiffany', bytitle: 'tiffany', keywords: 'tiffany', description: 'tiffany', parent: rings1)
mejuri = Category.create(title: 'Mejuri', bytitle: 'mejuri', keywords: 'mejuri', description: 'mejuri', parent: rings1)

kids = Category.create(title: 'Kids', bytitle: 'kids', keywords: 'kids', description: 'for kids')
adriatica = Category.create(title: 'Adriatica', bytitle: 'adriatica', keywords: 'adriatica', description: 'adriatica', parent: kids)
bracelets1 = Category.create(title: 'Anne Klein', bytitle: 'anne-klein', keywords: 'anne-klein', description: 'anne-klein', parent: kids)

# table brands

brand_attributes = [{
                      title: 'Bvlgari', bytitle: 'bvlgari',
                      img: 'abt-2.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Swarovski', bytitle: 'swarovski', img: 'abt-1.jpg',
                      description: Faker::Superhero.name
                    },
                    {
                      title: 'Sokolov', bytitle: 'sokolov',
                      img: 'abt-3.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Seiko', bytitle: 'seiko', img: 'seiko.png',
                      description: Faker::Superhero.name
                    },
                    {
                      title: 'Diesel', bytitle: 'diesel', img: 'diesel.png',
                      description: Faker::Superhero.name
                    }]

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# table products
product_attributes = [
                      {
                        category_id: '6',
                        brand_id: '1',
                        title: 'Signature Ring 128',
                        bytitle: 'signature-ring-128',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-2.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '1',
                        title: 'Star Ring 7',
                        bytitle: 'star-ring-7',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-3.png',
                        hit: 1
                      },
                      {
                        category_id: '7',
                        brand_id: '2',
                        title: 'Crystal Bracelet-51',
                        bytitle: 'crystal-bracelet-51',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-4.png',
                        hit: 1
                      },
                      {
                        category_id: '7',
                        brand_id: '2',
                        title: 'Crystal Ring-12',
                        bytitle: 'crystal-ring-12',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-5.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Crystal Necklace-7',
                        bytitle: 'crystal-necklace-7',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: ' Crystal Earrings-8',
                        bytitle: 'gold-crystal-earrings-8',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-7.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Shape Bracelet-10',
                        bytitle: 'shape-bracelet-10',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-8.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Crystal Necklace-32',
                        bytitle: 'crystal-necklace-32',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      {
                          category_id: '1',
                          brand_id: '4',
                          title: 'Crystal Ring-14',
                          bytitle: 'crystal-ring-14',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-5.png',
                          hit: 1
                      },
                      {
                          category_id: '2',
                          brand_id: '4',
                          title: 'Crystal Bracelet-9922',
                          bytitle: 'crystal-bracelet-9922',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-4.png',
                          hit: 1
                      },
                      {
                          category_id: '3',
                          brand_id: '4',
                          title: 'Star Ring-939',
                          bytitle: 'star-ring-939',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-3.png',
                          hit: 1
                      },
                      {
                          category_id: '4',
                          brand_id: '4',
                          title: 'Signature Ring-919',
                          bytitle: 'signature-ring-199',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-2.png',
                          hit: 1
                      },
                      {
                          category_id: '5',
                          brand_id: '4',
                          title: 'Crystal Necklace-3',
                          bytitle: 'crystal-necklace-40',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-1.png',
                          hit: 1
                      },
                      {
                          category_id: '8',
                          brand_id: '4',
                          title: 'Crystal Necklace-99',
                          bytitle: 'crystal-necklace-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      },
                      {
                          category_id: '9',
                          brand_id: '4',
                          title: 'Crystal Necklace-90',
                          bytitle: 'crystal-necklace-90',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-5.png',
                          hit: 1
                      },
                      {
                          category_id: '10',
                          brand_id: '4',
                          title: 'Crystal Necklace-8',
                          bytitle: 'crystal-necklace-9',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-4.png',
                          hit: 1
                      },
                      {
                          category_id: '11',
                          brand_id: '4',
                          title: 'Star Ring-99',
                          bytitle: 'star-ring-67234554-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-3.png',
                          hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Signature Ring-20',
                          bytitle: 'signature-ring-20',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-2.png',
                          hit: 1
                      },
                      {
                          category_id: '13',
                          brand_id: '4',
                          title: ' Crystal Necklace 675334-99',
                          bytitle: '-crystal-necklace-6754444-99',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-6.png',
                          hit: 1
                      }


]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end








