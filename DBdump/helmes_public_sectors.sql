create table sectors
(
    id        integer generated by default as identity
        constraint sectors_pkey
            primary key,
    sector    text,
    parent_id integer
        constraint fk_sector_parent
            references sectors
);

alter table sectors
    owner to postgres;

INSERT INTO public.sectors (id, sector, parent_id) VALUES (1, 'Manufacturing', null);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (2, 'Construction materials', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (3, 'Electronics and Optics', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (4, 'Food and Beverage', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (5, 'Bakery ja confectionery products', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (6, 'Beverages', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (7, 'Fish & fish products', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (8, 'Meat & meat products', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (9, 'Milk ja diary products', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (10, 'Other', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (11, 'Sweets ja snack food', 4);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (12, 'Furniture', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (13, 'Bathroom/sauna', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (14, 'Bedroom', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (15, 'Chlidrens room', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (16, 'Kitchen', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (17, 'Living room', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (18, 'Office', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (19, 'Other (funiture)', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (20, 'Outdoor', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (21, 'Porject furniture', 12);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (22, 'Machinery', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (23, 'Machinery components', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (24, 'Machinery equipment/tools', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (25, 'Manufacture of machinery', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (26, 'Maritime', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (27, 'Aluminium and steel workboats', 26);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (28, 'Boat/Yaht building', 26);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (29, 'Ship repair and conversion', 26);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (30, 'Metal structures', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (31, 'Other', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (32, 'Repair and maintenance service', 22);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (33, 'Metalworking', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (34, 'Construction of metal structures', 33);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (35, 'Houses and buildings', 33);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (36, 'Metal products', 33);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (37, 'Metal works', 33);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (38, 'CNC-machining', 37);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (39, 'Forging, Fasteners', 37);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (40, 'Gas, Plasma, Laser cutting', 37);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (41, 'MIG, TIG, Aluminium welding', 37);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (42, 'Plastic and Rubber', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (43, 'Packaging', 42);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (44, 'Plastic goods', 42);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (45, 'Plastic processing tehnology', 42);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (46, 'Blowing', 45);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (47, 'Moulding', 45);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (48, 'Plastic welding and processing', 45);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (49, 'Plastic profiles', 42);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (50, 'Printing', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (51, 'Advertising', 50);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (52, 'Book/Periodicals printing', 50);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (53, 'Labelling and packaging printing', 50);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (54, 'Textile and Clothing', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (55, 'Clothing', 54);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (56, 'Textile', 54);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (57, 'Wood', 1);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (58, 'Other (Wood)', 57);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (59, 'Wooden building materials', 57);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (60, 'Wooden houses', 57);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (61, 'Other', null);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (62, 'Creative industries', 61);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (63, 'Energy technology', 61);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (64, 'Envoirement', 61);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (65, 'Service', null);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (66, 'Businesse service', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (67, 'Engineering', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (68, 'Information Technology and Telecommunications', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (69, 'Data processing, Web portals, E-marketing', 68);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (70, 'Programming, Consultancy', 68);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (71, 'Software, Hardware', 68);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (72, 'Telecommunications', 68);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (73, 'Tourism', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (74, 'Translation services', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (75, 'Transport and Logistics', 65);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (76, 'Air', 75);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (77, 'Rail', 75);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (78, 'Road', 75);
INSERT INTO public.sectors (id, sector, parent_id) VALUES (79, 'Water', 75);