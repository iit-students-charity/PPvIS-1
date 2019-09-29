# frozen_string_literal: true

User.create(card_number: 1111222233334444, pin: 1111, balance: 1000, attempts: 0)
User.create(card_number: 2222333344445555, pin: 2222, balance: 500, attempts: 0)
User.create(card_number: 3333444455556666, pin: 3333, balance: 100, attempts: 0)
User.create(card_number: 4444555566667777, pin: 4444, balance: 10, attempts: 0)
User.create(card_number: 5555666677778888, pin: 5555, balance: 0, attempts: 0)
