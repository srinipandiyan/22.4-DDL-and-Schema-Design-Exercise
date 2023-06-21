CREATE TABLE Regions (
  region_id SERIAL PRIMARY KEY,
  region_name VARCHAR(255)
);

CREATE TABLE Users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  preferred_region_id INT,
  FOREIGN KEY (preferred_region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Posts (
  post_id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  text TEXT,
  location VARCHAR(255),
  user_id INT,
  region_id INT,
  category_id INT,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (region_id) REFERENCES Regions(region_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Categories (
  category_id SERIAL PRIMARY KEY,
  category_name VARCHAR(255)
);