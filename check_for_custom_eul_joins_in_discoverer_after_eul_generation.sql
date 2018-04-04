SELECT
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_obj_id,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_created_by
FROM
    eul5_key_cons
WHERE
    key_created_by != 'NOETIX_SYS'
;
