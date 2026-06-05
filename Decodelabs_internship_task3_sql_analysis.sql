-- Dataset: cleaned_internship_dataset

-- 1. View all data
SELECT * FROM public.cleaned_internship_dataset;

-- 2. Filter Delivered orders
SELECT * FROM public.cleaned_internship_dataset
WHERE "OrderStatus" = 'Delivered';

-- 3. Orders above price 500
SELECT * FROM public.cleaned_internship_dataset
WHERE "UnitPrice" > 500;

-- 4. Order by TotalPrice
SELECT "Product", "TotalPrice"
FROM public.cleaned_internship_dataset
ORDER BY "TotalPrice" DESC;

-- 5. Product wise order count
SELECT "Product", COUNT(*) AS total_orders
FROM public.cleaned_internship_dataset
GROUP BY "Product";

-- 6. Total Orders
SELECT COUNT(*) AS total_orders
FROM public.cleaned_internship_dataset;

-- 7. Total Revenue
SELECT SUM("TotalPrice") AS total_revenue
FROM public.cleaned_internship_dataset;

-- 8. Average Order Value
SELECT AVG("TotalPrice") AS avg_order_value
FROM public.cleaned_internship_dataset;

-- 9. Payment method wise revenue
SELECT "PaymentMethod",
       COUNT(*) AS orders,
       SUM("TotalPrice") AS revenue
FROM public.cleaned_internship_dataset
GROUP BY "PaymentMethod"
ORDER BY revenue DESC;
