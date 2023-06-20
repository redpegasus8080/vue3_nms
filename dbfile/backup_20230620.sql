--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Debian 13.11-1.pgdg110+1)
-- Dumped by pg_dump version 13.11 (Debian 13.11-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: co_dept_inf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.co_dept_inf (
    dept_cd character varying(10) NOT NULL,
    dept_nm character varying(100),
    upr_dept_cd character varying(10),
    dept_rem character varying(100),
    dept_ref1 character varying(100),
    dept_ref2 character varying(100),
    dept_ref3 character varying(100),
    dept_sort smallint,
    use_yn character varying(1),
    del_yn character varying(1),
    frst_reg_user_id character varying(20),
    frst_reg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_chg_user_id character varying(20),
    last_chg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.co_dept_inf OWNER TO postgres;

--
-- Name: TABLE co_dept_inf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.co_dept_inf IS '공통부서정보';


--
-- Name: COLUMN co_dept_inf.dept_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_cd IS '부서코드';


--
-- Name: COLUMN co_dept_inf.dept_nm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_nm IS '부서명';


--
-- Name: COLUMN co_dept_inf.upr_dept_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.upr_dept_cd IS '상위부서코드';


--
-- Name: COLUMN co_dept_inf.dept_rem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_rem IS '부서비고';


--
-- Name: COLUMN co_dept_inf.dept_ref1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_ref1 IS '부서참조1';


--
-- Name: COLUMN co_dept_inf.dept_ref2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_ref2 IS '부서참조2';


--
-- Name: COLUMN co_dept_inf.dept_ref3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_ref3 IS '부서참조3';


--
-- Name: COLUMN co_dept_inf.dept_sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.dept_sort IS '부서순서';


--
-- Name: COLUMN co_dept_inf.use_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.use_yn IS '사용여부';


--
-- Name: COLUMN co_dept_inf.del_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.del_yn IS '삭제여부';


--
-- Name: COLUMN co_dept_inf.frst_reg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.frst_reg_user_id IS '최초등록사용자id';


--
-- Name: COLUMN co_dept_inf.frst_reg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.frst_reg_dt IS '최초등록일시';


--
-- Name: COLUMN co_dept_inf.last_chg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.last_chg_user_id IS '최종변경사용자id';


--
-- Name: COLUMN co_dept_inf.last_chg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dept_inf.last_chg_dt IS '최종변경일시';


--
-- Name: co_dtl_cd_inf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.co_dtl_cd_inf (
    co_grp_cd character varying(10) NOT NULL,
    co_cd character varying(10) NOT NULL,
    co_nm character varying(100),
    co_rem character varying(100),
    co_ref1 character varying(100),
    co_ref2 character varying(100),
    co_ref3 character varying(100),
    co_sort character varying(10),
    use_yn character varying(1),
    del_yn character varying(1),
    frst_reg_user_id character varying(20),
    frst_reg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_chg_user_id character varying(20),
    last_chg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.co_dtl_cd_inf OWNER TO postgres;

--
-- Name: TABLE co_dtl_cd_inf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.co_dtl_cd_inf IS '공통상세코드정보';


--
-- Name: COLUMN co_dtl_cd_inf.co_grp_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_grp_cd IS '공통그룹코드';


--
-- Name: COLUMN co_dtl_cd_inf.co_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_cd IS '공통코드';


--
-- Name: COLUMN co_dtl_cd_inf.co_nm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_nm IS '공통코드명';


--
-- Name: COLUMN co_dtl_cd_inf.co_rem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_rem IS '공통코드비고';


--
-- Name: COLUMN co_dtl_cd_inf.co_ref1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_ref1 IS '공통코드참조1';


--
-- Name: COLUMN co_dtl_cd_inf.co_ref2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_ref2 IS '공통코드참조2';


--
-- Name: COLUMN co_dtl_cd_inf.co_ref3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_ref3 IS '공통코드참조3';


--
-- Name: COLUMN co_dtl_cd_inf.co_sort; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.co_sort IS '공통순서';


--
-- Name: COLUMN co_dtl_cd_inf.use_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.use_yn IS '사용여부';


--
-- Name: COLUMN co_dtl_cd_inf.del_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.del_yn IS '삭제여부';


--
-- Name: COLUMN co_dtl_cd_inf.frst_reg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.frst_reg_user_id IS '최초등록사용자id';


--
-- Name: COLUMN co_dtl_cd_inf.frst_reg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.frst_reg_dt IS '최초등록일시';


--
-- Name: COLUMN co_dtl_cd_inf.last_chg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.last_chg_user_id IS '최종변경사용자id';


--
-- Name: COLUMN co_dtl_cd_inf.last_chg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_dtl_cd_inf.last_chg_dt IS '최종변경일시';


--
-- Name: co_grp_cd_inf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.co_grp_cd_inf (
    co_grp_cd character varying(10) NOT NULL,
    co_grp_nm character varying(100),
    co_grp_id character varying(100),
    co_grp_rem character varying(100),
    co_grp_ref1 character varying(100),
    co_grp_ref2 character varying(100),
    co_grp_ref3 character varying(100),
    use_yn character varying(1),
    del_yn character varying(1),
    frst_reg_user_id character varying(20),
    frst_reg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_chg_user_id character varying(20),
    last_chg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.co_grp_cd_inf OWNER TO postgres;

--
-- Name: TABLE co_grp_cd_inf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.co_grp_cd_inf IS '공통그룹코드정보';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_cd IS '공통그룹코드';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_nm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_nm IS '공통그룹명';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_id IS '공통그룹비고';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_rem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_rem IS '공통그룹비고';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_ref1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_ref1 IS '공통그룹참조1';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_ref2; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_ref2 IS '공통그룹참조2';


--
-- Name: COLUMN co_grp_cd_inf.co_grp_ref3; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.co_grp_ref3 IS '공통그룹참조3';


--
-- Name: COLUMN co_grp_cd_inf.use_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.use_yn IS '사용여부';


--
-- Name: COLUMN co_grp_cd_inf.del_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.del_yn IS '삭제여부';


--
-- Name: COLUMN co_grp_cd_inf.frst_reg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.frst_reg_user_id IS '최초등록사용자id';


--
-- Name: COLUMN co_grp_cd_inf.frst_reg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.frst_reg_dt IS '최초등록일시';


--
-- Name: COLUMN co_grp_cd_inf.last_chg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.last_chg_user_id IS '최종변경사용자id';


--
-- Name: COLUMN co_grp_cd_inf.last_chg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_grp_cd_inf.last_chg_dt IS '최종변경일시';


--
-- Name: co_user_inf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.co_user_inf (
    user_id character varying(20) NOT NULL,
    user_nm character varying(100),
    user_pswd character varying(100),
    dept_cd character varying(10),
    jbttl_cd character varying(10),
    jbcd_cd character varying(10),
    user_eml character varying(100),
    user_phone character varying(100),
    user_img bytea,
    pswd_fail_cnt smallint DEFAULT 0,
    last_lgn_dt timestamp without time zone,
    last_pswd_chg_dt timestamp without time zone,
    use_yn character varying(1),
    del_yn character varying(1),
    frst_reg_user_id character varying(20),
    frst_reg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    last_chg_user_id character varying(20),
    last_chg_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.co_user_inf OWNER TO postgres;

--
-- Name: TABLE co_user_inf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.co_user_inf IS '공통사용자정보';


--
-- Name: COLUMN co_user_inf.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_id IS '사용자id';


--
-- Name: COLUMN co_user_inf.user_nm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_nm IS '사용자명';


--
-- Name: COLUMN co_user_inf.user_pswd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_pswd IS '사용자password';


--
-- Name: COLUMN co_user_inf.dept_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.dept_cd IS '부서코드';


--
-- Name: COLUMN co_user_inf.jbttl_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.jbttl_cd IS '직책코드';


--
-- Name: COLUMN co_user_inf.jbcd_cd; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.jbcd_cd IS '직급코드';


--
-- Name: COLUMN co_user_inf.user_eml; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_eml IS '사용자email';


--
-- Name: COLUMN co_user_inf.user_phone; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_phone IS '사용자phone';


--
-- Name: COLUMN co_user_inf.user_img; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.user_img IS '사용자image';


--
-- Name: COLUMN co_user_inf.pswd_fail_cnt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.pswd_fail_cnt IS '비밀번호실패수';


--
-- Name: COLUMN co_user_inf.last_lgn_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.last_lgn_dt IS '최종로그인일시';


--
-- Name: COLUMN co_user_inf.last_pswd_chg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.last_pswd_chg_dt IS '최종비밀번호변경일시';


--
-- Name: COLUMN co_user_inf.use_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.use_yn IS '사용여부';


--
-- Name: COLUMN co_user_inf.del_yn; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.del_yn IS '삭제여부';


--
-- Name: COLUMN co_user_inf.frst_reg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.frst_reg_user_id IS '최초등록사용자id';


--
-- Name: COLUMN co_user_inf.frst_reg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.frst_reg_dt IS '최초등록일시';


--
-- Name: COLUMN co_user_inf.last_chg_user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.last_chg_user_id IS '최종변경사용자id';


--
-- Name: COLUMN co_user_inf.last_chg_dt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.co_user_inf.last_chg_dt IS '최종변경일시';


--
-- Data for Name: co_dept_inf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.co_dept_inf (dept_cd, dept_nm, upr_dept_cd, dept_rem, dept_ref1, dept_ref2, dept_ref3, dept_sort, use_yn, del_yn, frst_reg_user_id, frst_reg_dt, last_chg_user_id, last_chg_dt) FROM stdin;
\.


--
-- Data for Name: co_dtl_cd_inf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.co_dtl_cd_inf (co_grp_cd, co_cd, co_nm, co_rem, co_ref1, co_ref2, co_ref3, co_sort, use_yn, del_yn, frst_reg_user_id, frst_reg_dt, last_chg_user_id, last_chg_dt) FROM stdin;
\.


--
-- Data for Name: co_grp_cd_inf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.co_grp_cd_inf (co_grp_cd, co_grp_nm, co_grp_id, co_grp_rem, co_grp_ref1, co_grp_ref2, co_grp_ref3, use_yn, del_yn, frst_reg_user_id, frst_reg_dt, last_chg_user_id, last_chg_dt) FROM stdin;
\.


--
-- Data for Name: co_user_inf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.co_user_inf (user_id, user_nm, user_pswd, dept_cd, jbttl_cd, jbcd_cd, user_eml, user_phone, user_img, pswd_fail_cnt, last_lgn_dt, last_pswd_chg_dt, use_yn, del_yn, frst_reg_user_id, frst_reg_dt, last_chg_user_id, last_chg_dt) FROM stdin;
202003	백성현	1234	\N	\N	\N	redpegasus80@mobigen.com	010-2793-8568	\N	0	\N	\N	Y	N	202003	2023-06-20 13:34:31.236043	202003	2023-06-20 13:34:31.236043
\.


--
-- Name: co_dept_inf co_dept_inf_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.co_dept_inf
    ADD CONSTRAINT co_dept_inf_pk PRIMARY KEY (dept_cd);


--
-- Name: co_dtl_cd_inf co_dtl_cd_inf_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.co_dtl_cd_inf
    ADD CONSTRAINT co_dtl_cd_inf_pk PRIMARY KEY (co_grp_cd, co_cd);


--
-- Name: co_grp_cd_inf co_grp_cd_inf_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.co_grp_cd_inf
    ADD CONSTRAINT co_grp_cd_inf_pk PRIMARY KEY (co_grp_cd);


--
-- Name: co_user_inf co_user_inf_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.co_user_inf
    ADD CONSTRAINT co_user_inf_pk PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

