select categories.name, sum(products.amount) from categories
inner join products on categories.id = products.id_categories
group by categories.name;