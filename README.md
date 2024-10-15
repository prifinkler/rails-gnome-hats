# Gnats: Gnome Hats Rental Service

A Rails application for renting and managing gnome hats, bringing whimsy and style to your inner gnome.

## Features

- Browse a variety of gnome hats
- Rent hats for your gnomes
- List your own gnome hats for rent
- Manage your hat listings and bookings
- Leave reviews for rented hats
- Responsive design with a playful gnome-themed aesthetic

## Technical Details

- Built with Ruby on Rails 7.0
- Uses PostgreSQL database
- Implements Cloudinary for image upload and storage
- Styled with Bootstrap and custom SCSS
- Uses Devise for user authentication

## Setup

1. Clone the repository
2. Run `bundle install`
3. Set up the database with `rails db:create db:migrate db:seed`
4. Start the server with `rails server`

## Environment Variables

Make sure to set up the following environment variables:
- `CLOUDINARY_URL`: Your Cloudinary credentials

## Key Models

- `User`: Manages user accounts and authentication
- `Hat`: Represents individual gnome hats available for rent
- `Booking`: Handles the rental transactions between users and hat owners
- `Review`: Allows users to leave feedback on their hat rentals

