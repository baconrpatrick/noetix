DECLARE
    v_eul5_key_cons_key_id         eul5_us.eul5_key_cons.key_id%TYPE;
    v_eul5_key_cons_key_name       eul5_us.eul5_key_cons.key_name%TYPE;
    v_eul5_key_cons_key_dev_key    eul5_us.eul5_key_cons.key_developer_key%TYPE;
    v_eul5_key_cons_key_dev_desc   eul5_us.eul5_key_cons.key_description%TYPE;
    v_eul5_key_cons_exp_formula1   eul5_us.eul5_expressions.exp_formula1%TYPE;
    v_eul5_objs_key_obj_id         eul5_us.eul5_objs.obj_id%TYPE;
    v_eul5_objs_fk_obj_id          eul5_us.eul5_objs.obj_id%TYPE;
    v_eul5_exp_exp_formula1_pk     eul5_us.eul5_expressions.exp_formula1%TYPE;
    v_date                         eul5_us.eul5_key_cons.key_updated_date%TYPE;

    -------------------------------------------------------
    v_eul5_expressions_jp_exp_id   eul5_us.eul5_expressions.exp_id%TYPE;

    -------------------------------------------------------
    v_eul5_exp_exp_fk              eul5_us.eul5_expressions.exp_id%TYPE;
    v_eul5_exp_exp_pk              eul5_us.eul5_expressions.exp_id%TYPE;
    v_eul5_exp_deps_ed_id1         eul5_us.eul5_exp_deps.ed_id%TYPE;
    v_eul5_exp_deps_ed_id2         eul5_us.eul5_exp_deps.ed_id%TYPE;

    -------------------------------------------------------
    v_error_code                   NUMBER(38);
    v_error_message                VARCHAR2(200);
BEGIN
    v_date := SYSDATE;

-----------------------join 1-----------------------------
-- 'ZARCS_CS_COMMISSION_RATES_JOIN_TO_ARX0_TRANSACTION_LINE_DTLS'
    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'ZARCS_CS_COMMISSION_RATES_JOIN_TO_ARX0_TRANSACTION_LINE_DTLS';

        dbms_output.put_line('v_eul5_exp_exp_pk => ' || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => ' || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => ' || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 2-----------------------------
--  'Z_JOIN_FROM_ARX0_TRANSACTION_LINE_DTLS_TO_INVX0_ITEMS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_ARX0_TRANSACTION_LINE_DTLS_TO_INVX0_ITEMS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 3-----------------------------
-- 'Z_JOIN_FROM_ONTX0_CS_LIST_LINES_ALL__TO_RAAX0_CUSTOMERS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_ONTX0_CS_LIST_LINES_ALL__TO_RAAX0_CUSTOMERS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 4-----------------------------
-- 'Z_JOIN_FROM_GMDG_CS_CUST_ITEM_SPEC_REVIEWS_TO_INVG_ITEMS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMDG_CS_CUST_ITEM_SPEC_REVIEWS_TO_INVG_ITEMS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 5-----------------------------
-- 'Z_JOIN_FROM_GMDG_QC_SPECIFICATIONS_TO_INVG_CUSTOMER_ITEMS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMDG_QC_SPECIFICATIONS_TO_INVG_CUSTOMER_ITEMS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 6-----------------------------
-- 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_MATERIAL_DETAILS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_MATERIAL_DETAILS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 7-----------------------------
-- 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_MATERIAL_DETAILS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_MATERIAL_DETAILS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 8-----------------------------
-- 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_STEP_DETAILS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_STEP_DETAILS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 9-----------------------------
-- 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_STEP_DETAILS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_STEP_DETAILS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 10----------------------------
--  'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_GMFG_CS_ITEM_COST'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_GMFG_CS_ITEM_COST';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 11----------------------------
-- 'Z_JOIN_FROM_GMEG_BATCH_MATERIAL_DETAILS_TO_GMFG_CS_ITEM_COST'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_MATERIAL_DETAILS_TO_GMFG_CS_ITEM_COST';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 12----------------------------
-- 'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_INVG_CATEGORY_COSTING'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_INVG_CATEGORY_COSTING';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 13----------------------------
-- 'Z_JOIN_FROM_GMEG_BATCH_STEP_RSRC_ACTVTY_TO_GMFG_RESOURCE_COSTS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_STEP_RSRC_ACTVTY_TO_GMFG_RESOURCE_COSTS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 14----------------------------
--  'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_GMFG_CS_ITEM_COST'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_GMFG_CS_ITEM_COST';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 15----------------------------
--  'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 16----------------------------
--     'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_INVG_CATEGORY_COSTING'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_INVG_CATEGORY_COSTING';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 17----------------------------
--  'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_GMFG_CS_ITEM_COST'-

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_GMFG_CS_ITEM_COST';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 18----------------------------
-- 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_INVG_CATEGORY_COSTING'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_INVG_CATEGORY_COSTING';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 19----------------------------
-- 'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT_LOC'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT_LOC';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 20----------------------------
--  'Z_JOIN_FROM_ONTX0_LINES_BASC_TO_ONTX0_DELIVERY_ASSIGNMENTS'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'Z_JOIN_FROM_ONTX0_LINES_BASC_TO_ONTX0_DELIVERY_ASSIGNMENTS';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 21----------------------------
-- 'ZCSG_SERVICE_REQUESTS_CSG_SERVICE_REQUESTSCSG_CHARGE_DETAILS_221781'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'ZCSG_SERVICE_REQUESTS_CSG_SERVICE_REQUESTSCSG_CHARGE_DETAILS_221781';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------

-----------------------join 22----------------------------
-- 'ZEAMX0_WORK_ORDERS_EAMX0_WORK_ORDERSEAMX0_WO_MATRL_REQUIREMENTS_OUTER'

    BEGIN
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        SELECT
            ekc.key_id,
            eexp.exp_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,2,NULL,1) ) pk_key_id,
            to_number(regexp_substr(eexp.exp_formula1,'\[\d,(\d+)\]',1,3,NULL,1) ) fk_key_id
        INTO
            v_eul5_key_cons_key_id,v_eul5_expressions_jp_exp_id,v_eul5_exp_exp_pk,v_eul5_exp_exp_fk
        FROM
            eul5_key_cons ekc
            JOIN eul5_expressions eexp ON ekc.key_id = eexp.jp_key_id
                                          AND eexp.exp_type = 'JP'
        WHERE
            1 = 1
            AND   ekc.key_type = 'FK'
            AND   ekc.key_developer_key = 'ZEAMX0_WORK_ORDERS_EAMX0_WORK_ORDERSEAMX0_WO_MATRL_REQUIREMENTS_OUTER';

        dbms_output.put_line('v_eul5_exp_exp_pk => '
        || v_eul5_exp_exp_pk);
        dbms_output.put_line('v_eul5_exp_exp_fk => '
        || v_eul5_exp_exp_fk);
        dbms_output.put_line('v_eul5_expressions_jp_exp_id => '
        || v_eul5_expressions_jp_exp_id);
        v_eul5_exp_deps_ed_id1 := eul5_id_seq.nextval;
        v_eul5_exp_deps_ed_id2 := eul5_id_seq.nextval;
        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id1,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_pk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

        INSERT INTO eul5_exp_deps (
            ed_id,
            ed_type,
            pd_p_id,
            ped_exp_id,
            pfd_fun_id,
            psd_sq_id,
            cd_exp_id,
            cfd_fun_id,
            cid_exp_id,
            ed_element_state,
            ed_created_by,
            ed_created_date,
            ed_updated_by,
            ed_updated_date,
            notm
        ) VALUES (
            v_eul5_exp_deps_ed_id2,
            'PED',
            v_eul5_expressions_jp_exp_id,
            v_eul5_exp_exp_fk,
            NULL,
            NULL,
            NULL,
            NULL,
            NULL,
            0,
            'EUL5_US',
            v_date,
            'EUL5_US',
            v_date,
            0
        );

    EXCEPTION
        WHEN OTHERS THEN
            v_error_code := sqlcode;
            v_error_message := sqlerrm;
            dbms_output.put_line(TO_CHAR(v_error_code)
            || '- '
            || v_error_message);
    END;
----------------------------------------------------------


END;
/
