CREATE TABLE IF NOT EXISTS public.host_info 
(
    id               SERIAL NOT NULL,
    hostname         VARCHAR NOT NULL,
    cpu_number       SMALLINT NOT NULL,
    cpu_architecture VARCHAR NOT NULL,
    cpu_model        VARCHAR NOT NULL,
    cpu_mhz          DOUBLE PRECISION NOT NULL,
    l2_cache         INTEGER NOT NULL,
    total_mem        INTEGER NULL,
    "timestamp"      TIMESTAMP NULL,
    CONSTRAINT host_info_pk PRIMARY KEY (id),
    CONSTRAINT host_info_un UNIQUE (hostname)
);

CREATE TABLE IF NOT EXISTS public.host_usage
(
    host_id          INTEGER NOT NULL,
    memory_free      INTEGER NOT NULL,
    cpu_idle         REAL NOT NULL,
    cpu_kernel       REAL NOT NULL,
    disk_io          INTEGER NOT NULL,
    disk_available   INTEGER NOT NULL,
    "timestamp"      TIMESTAMP NOT NULL,
    CONSTRAINT host_usage_pk PRIMARY KEY (id),
    CONSTRAINT host_usage_fk FOREIGN KEY (host_id) REFERENCES public.host_info(id)
);
