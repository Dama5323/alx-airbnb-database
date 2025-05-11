-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashedpwd1', '1234567890', 'host'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashedpwd2', '2345678901', 'guest'),
  ('33333333-3333-3333-3333-333333333333', 'Carol', 'Lee', 'carol@example.com', 'hashedpwd3', '3456789012', 'guest');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 'Cozy Cottage', 'A beautiful cottage by the lake.', 'Nairobi, Kenya', 80.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', 'City Apartment', 'Modern apartment in the city center.', 'Mombasa, Kenya', 120.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', '2024-07-01', '2024-07-05', 320.00, 'confirmed'),
  ('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', '2024-08-10', '2024-08-12', 240.00, 'pending');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('p1111111-pppp-pppp-pppp-ppppppppppp1', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 320.00, 'credit_card');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrr1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay, very peaceful!');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmm1', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Is the property available for early check-in?'),
  ('m2222222-mmmm-mmmm-mmmm-mmmmmmmmmmm2', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, check-in from 10 AM is fine.');
