select products.name,providers.name,categories.name from products
INNER JOIN providers ON providers.id = products.id_providers
INNER JOIN categories ON categories.id = products.id_categories
WHERE providers.name = 'Sansul SA' AND categories.name = 'Imported';
