-- Insert 200 realistic Nigerian customers
INSERT INTO customers (name, gender, dob, signup_date, city)
SELECT 
    -- Full Name: Firstname + Lastname
    first_names[ceil(random() * array_length(first_names, 1))] || ' ' ||
    last_names[ceil(random() * array_length(last_names, 1))],

    -- Random gender
    CASE WHEN random() < 0.5 THEN 'M' ELSE 'F' END,

    -- Random date of birth (between 1970 and 1997)
    DATE '1970-01-01' + (trunc(random() * 10000)::int) * INTERVAL '1 day',

    -- Random signup date within last 3 years
    CURRENT_DATE - (trunc(random() * 1095)::int) * INTERVAL '1 day',

    -- Random city
    cities[ceil(random() * array_length(cities, 1))]
FROM generate_series(1, 200),
LATERAL (
    SELECT 
        ARRAY[
            'Chinedu', 'Aisha', 'Tunde', 'Ngozi', 'Bola', 'Obinna', 'Fatima', 'Yakubu',
            'Emeka', 'Zainab', 'Ifeanyi', 'Uche', 'Abubakar', 'Lilian', 'Segun', 'Halima', 
			'Adesuwa', 'Kehinde', 'Mercy', 'Emmanuel'
        ] AS first_names,
        ARRAY[
            'Okonkwo', 'Balogun', 'Adegoke', 'Nwachukwu', 'Danjuma', 'Adelaja', 'Ibrahim',
            'Umeh', 'Ogunleye', 'Abiola', 'Mohammed', 'Eze', 'Lawal', 'Obi', 'Ahmed', 'Onyeka',
			'Nwabueze', 'Ajibade', 'Suleman', 'Johnson'
        ] AS last_names,
        ARRAY[
            'Lagos', 'Abuja', 'Port Harcourt', 'Enugu', 'Kano', 'Ibadan', 'Jos', 'Abeokuta',
            'Calabar', 'Owerri', 'Benin City', 'Kaduna'
        ] AS cities
) name_data;

SELECT * FROM customers

