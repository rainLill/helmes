create table databasechangelog
(
    id            varchar(255) not null,
    author        varchar(255) not null,
    filename      varchar(255) not null,
    dateexecuted  timestamp    not null,
    orderexecuted integer      not null,
    exectype      varchar(10)  not null,
    md5sum        varchar(35),
    description   varchar(255),
    comments      varchar(255),
    tag           varchar(255),
    liquibase     varchar(20),
    contexts      varchar(255),
    labels        varchar(255),
    deployment_id varchar(10)
);

alter table databasechangelog
    owner to postgres;

INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('200713 Liquibase setup', 'rain', 'db/changelog/db.changelog-1.0.yaml', '2020-07-16 04:35:16.908267', 1, 'EXECUTED', '8:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', null, '3.8.9', null, null, '4863316885');
INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('200713 creation of tables', 'rain', 'db/changelog/db.changelog-1.0.yaml', '2020-07-16 04:35:16.943882', 2, 'EXECUTED', '8:aaac003a74dc3e073a524cd282de688a', 'createTable tableName=sectors; createTable tableName=clients', '', null, '3.8.9', null, null, '4863316885');
INSERT INTO public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES ('200713 sectors insertion', 'rain', 'db/changelog/db.changelog-1.0.yaml', '2020-07-16 04:35:17.091045', 3, 'EXECUTED', '8:cb3c815f46c6ca49df57ce3435909b6e', 'sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sql; sq...', '', null, '3.8.9', null, null, '4863316885');