create table categories (
  id uuid primary key default gen_random_uuid(),
  name text not null
);

create table customers (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text,
  phone text,
  address text
);

create table products (
  id uuid primary key default gen_random_uuid(),
  sku text unique,
  name text not null,
  description text,
  category_id uuid references categories(id),
  price numeric(12,2) default 0,
  stock integer default 0
);
