create table clients
(
    id         integer generated by default as identity
        constraint clients_pkey
            primary key,
    name       text,
    session_id text,
    sector_id  integer
        constraint fk_sector_id
            references sectors,
    terms      boolean
);

alter table clients
    owner to postgres;

INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (26, 'Rain', '69E1D59BCD304F16FD4370D12169CEA5', 4, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (29, 'Rain', 'DEFC9D0C02CCFDEA00F3B4DC795ABC20', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (30, 'Rain', 'DEFC9D0C02CCFDEA00F3B4DC795ABC20', 4, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (35, 'Rain', 'E02BC56C7A4C4EFA4ED65C3F1BF80B9F', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (36, 'Rain', 'E02BC56C7A4C4EFA4ED65C3F1BF80B9F', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (53, 'Rain', '7CBA60E6806D98884959DB89872CE640', 75, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (54, 'Rain', '7CBA60E6806D98884959DB89872CE640', 76, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (55, 'Rain', '7CBA60E6806D98884959DB89872CE640', 77, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (56, 'Rain', '7CBA60E6806D98884959DB89872CE640', 78, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (57, 'Rain', '7CBA60E6806D98884959DB89872CE640', 79, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (62, 'JavaDeveloperEveningTraining', '21F13B15AAEBFDDC471E2AEA8A74C897', 56, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (63, 'JavaDeveloperEveningTraining', '21F13B15AAEBFDDC471E2AEA8A74C897', 57, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (64, 'JavaDeveloperEveningTraining', '21F13B15AAEBFDDC471E2AEA8A74C897', 58, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (68, 'Hello World', '776DB9031A1825076E931B715D2B2135', 70, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (69, 'Hello World', '776DB9031A1825076E931B715D2B2135', 71, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (70, 'Hello World', '776DB9031A1825076E931B715D2B2135', 72, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (71, 'Hello World', '776DB9031A1825076E931B715D2B2135', 73, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (72, 'Hello World', '776DB9031A1825076E931B715D2B2135', 74, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (73, 'Hello World', '776DB9031A1825076E931B715D2B2135', 75, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (74, 'Hello World', '776DB9031A1825076E931B715D2B2135', 76, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (75, 'Hello World', '776DB9031A1825076E931B715D2B2135', 77, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (76, 'Hello World', '776DB9031A1825076E931B715D2B2135', 78, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (80, 'Rain123', '7C7F30B8B8DADE1DA3A061DAADBB3933', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (81, 'Rain123', '7C7F30B8B8DADE1DA3A061DAADBB3933', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (82, 'Rain123', '7C7F30B8B8DADE1DA3A061DAADBB3933', 4, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (25, 'Rain', '69E1D59BCD304F16FD4370D12169CEA5', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (24, 'Rain', '69E1D59BCD304F16FD4370D12169CEA5', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (3, 'Rain', '1F00ED44937D188198E9D97FA05E3827', 1, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (2, 'Rain', '00C9807F51DC2A8650D92832A419000E', 4, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (1, 'Rain', '00C9807F51DC2A8650D92832A419000E', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (7, 'Rain', 'EA32C947B8517184E38EED496E4B121C', 1, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (6, 'Mihkel mUtt', '153890C4B143FF2401DAFC52280EDB88', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (5, 'Rain', '8DD43ED58AABC9C4E5E6A24E9421D6B6', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (4, 'Rain', 'E9428C6ECC6C0607E80541EA87323AE2', 1, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (9, 'Rain', 'EA32C947B8517184E38EED496E4B121C', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (8, 'Rain', 'EA32C947B8517184E38EED496E4B121C', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (17, 'Hello World', 'A97E32AE42E3891D31DB38587F726157', 2, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (16, 'Hello World', 'A97E32AE42E3891D31DB38587F726157', 1, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (23, 'Mihkel mUtt', '6FA2B44D3DC3EE9A404937DAB5F4163F', 4, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (22, 'Mihkel mUtt', '6FA2B44D3DC3EE9A404937DAB5F4163F', 3, true);
INSERT INTO public.clients (id, name, session_id, sector_id, terms) VALUES (21, 'Mihkel mUtt', '6FA2B44D3DC3EE9A404937DAB5F4163F', 2, true);