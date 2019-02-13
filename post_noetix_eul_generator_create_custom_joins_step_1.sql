--1
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ARCS_CS_Commission_Rates join to ARX0_Transaction_Line_Dtls',  --key_name
    'ZARCS_CS_COMMISSION_RATES_JOIN_TO_ARX0_TRANSACTION_LINE_DTLS',  --key_developer_key
    'Z$ARCS_CS_Commission_Rates join to ARX0_Transaction_Line_Dtls',  --key_description
    NULL,  --key_ext_key
    130292,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    135346,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    1,  --fk_dtl_no_master
    0,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('20-APR-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('20-APR-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);  --VALUES

--2
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from ARX0_Transaction_Line_Dtls to INVX0_Items',  --key_name
    'Z_JOIN_FROM_ARX0_TRANSACTION_LINE_DTLS_TO_INVX0_ITEMS',  --key_developer_key
    'Z$ join from ARX0_Transaction_Line_Dtls to INVX0_Items',  --key_description
    NULL,  --key_ext_key
    135584,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    135346,  --fk_obj_id_remote
    0,  --fk_one_to_one
    1,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('15-SEP-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('15-SEP-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--3
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from ONTX0_CS_List_Lines_All  To RAAX0_Customers',  --key_name
    'Z_JOIN_FROM_ONTX0_CS_LIST_LINES_ALL__TO_RAAX0_CUSTOMERS',  --key_developer_key
    'Z$ join from ONTX0_CS_List_Lines_All  To RAAX0_Customers',  --key_description
    NULL,  --key_ext_key
    135792,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    417823,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    0,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--4
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from GMDG_CS_CUST_ITEM_SPEC_REVIEWS to INVG_Items',  --key_name
    'Z_JOIN_FROM_GMDG_CS_CUST_ITEM_SPEC_REVIEWS_TO_INVG_ITEMS',  --key_developer_key
    'Z$ join from GMDG_CS_CUST_ITEM_SPEC_REVIEWS to INVG_Items',  --key_description
    NULL,  --key_ext_key
    137530,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    138997,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    1,  --fk_dtl_no_master
    0,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--5
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from GMDG_QC_Specifications to INVG_Customer_Items',  --key_name
    'Z_JOIN_FROM_GMDG_QC_SPECIFICATIONS_TO_INVG_CUSTOMER_ITEMS',  --key_developer_key
    'Z$ join from GMDG_QC_Specifications to INVG_Customer_Items',  --key_description
    NULL,  --key_ext_key
    138266,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    138912,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('12-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('12-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--6
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from GMEG_Batch_Headers_Summary to GMEG_Batch_Material_Details',  --key_name
    'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_MATERIAL_DETAILS',  --key_developer_key
    'Z$ join from GMEG_Batch_Headers_Summary to GMEG_Batch_Material_Details',  --key_description
    NULL,  --key_ext_key
    139694,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139644,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('19-AUG-15','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('19-AUG-15','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--7
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$GMEG_Batch_Headers (GMEG_Batch_Headers/GMEG_Batch_Material_Details)',  --key_name
    'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_MATERIAL_DETAILS',  --key_developer_key
    'Join master view GMEG_Batch_Headers to detail view GMEG_Batch_Material_Details (Z$GMEG_Batch_Headers)',  --key_description
    NULL,  --key_ext_key
    139694,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139563,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--8
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$_join_from_GMEG_Batch_Headers_summary_to_GMEG_Batch_Step_details',  --key_name
    'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_STEP_DETAILS',  --key_developer_key
    'Z_join_from_GMEG_Batch_Headers_summary_to_GMEG_Batch_Step_details',  --key_description
    NULL,  --key_ext_key
    139768,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139644,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--9
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$GMEG_Batch_Headers (GMEG_Batch_Headers/GMEG_Batch_Step_Details)',  --key_name
    'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_STEP_DETAILS',  --key_developer_key
    'Join master view GMEG_Batch_Headers to detail view GMEG_Batch_Step_Details (Z$GMEG_Batch_Headers)',  --key_description
    NULL,  --key_ext_key
    139768,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139563,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('21-AUG-15','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--10
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Onhand_Period_End_to GMFG_CS_Item_Cost',  --key_name
    'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_GMFG_CS_ITEM_COST',  --key_developer_key
    'Z$ join from INVG_Onhand_Period_End_to GMFG_CS_Item_Cost',  --key_description
    NULL,  --key_ext_key
    140019,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    143103,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('03-MAY-17','DD-MON-RR'),  --key_updated_date
    2  --notm
);


--11
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$_join from GMEG_Batch_Material_Details to GMFG_CS_Item_Cost',  --key_name
    'Z_JOIN_FROM_GMEG_BATCH_MATERIAL_DETAILS_TO_GMFG_CS_ITEM_COST',  --key_developer_key
    'Z$_join from GMEG_Batch_Material_Details to GMFG_CS_Item_Cost',  --key_description
    NULL,  --key_ext_key
    140019,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139694,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);



--12
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Onhand_Period_End_to INVG_Category_Costing',  --key_name
    'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_INVG_CATEGORY_COSTING',  --key_developer_key
    'Z$ join from INVG_Onhand_Period_End_to INVG_Category_Costing',  --key_description
    NULL,  --key_ext_key
    140067,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    143103,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--13
INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from GMEG_Batch_Step_Rsrc_Actvty To GMFG_Resource_Costs',  --key_name
    'Z_JOIN_FROM_GMEG_BATCH_STEP_RSRC_ACTVTY_TO_GMFG_RESOURCE_COSTS',  --key_developer_key
    'Z$ join from GMEG_Batch_Step_Rsrc_Actvty To GMFG_Resource_Costs',  --key_description
    NULL,  --key_ext_key
    142782,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    139817,  --fk_obj_id_remote
    0,  --fk_one_to_one
    1,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('16-AUG-15','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('16-AUG-15','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--14



INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Items_Onhand_By_Lot to GMFG_CS_Item_Cost',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_GMFG_CS_ITEM_COST',  --key_developer_key
    'Z$ join from INVG_Items_Onhand_By_Lot to GMFG_CS_Item_Cost',  --key_description
    NULL,  --key_ext_key
    148850,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    140019,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--15

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$_join_from_INVG_Items_to_INVG_Item_Onhand_By_lot',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT',  --key_developer_key
    'Z$_join_from_INVG_Items_to_INVG_Item_Onhand_By_lot',  --key_description
    NULL,  --key_ext_key
    148850,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    138997,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--16


INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Items_Onhand_By_Lot to INVG_Category_Costing',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_INVG_CATEGORY_COSTING',  --key_developer_key
    'Z$ join from INVG_Items_Onhand_By_Lot to INVG_Category_Costing',  --key_description
    NULL,  --key_ext_key
    148850,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    140067,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--17

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Items_Onhand_By_Lot_loc to GMFG_CS_Item_Cost',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_GMFG_CS_ITEM_COST',  --key_developer_key
    'Z$ join from INVG_Items_Onhand_By_Lot_loc to GMFG_CS_Item_Cost',  --key_description
    NULL,  --key_ext_key
    148901,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    140019,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--18

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from INVG_Items_Onhand_By_Lot_loc to INVG_Category_Costing',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_INVG_CATEGORY_COSTING',  --key_developer_key
    'Join between INVG_Category_COSTING.Z$INVG_Items and INVG_Item_Onhand_By_Lot_Loc.Z$INVG_Items',  --key_description
    NULL,  --key_ext_key
    148901,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    140067,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--19

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$_join_from_INVG_Items_to_INVG_Item_Onhand_By_Lot_Loc',  --key_name
    'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT_LOC',  --key_developer_key
    'Z$_join_from_INVG_Items_to_INVG_Item_Onhand_By_Lot_Loc',  --key_description
    NULL,  --key_ext_key
    148901,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    138997,  --fk_obj_id_remote
    0,  --fk_one_to_one
    0,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


--20

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$ join from ONTX0_Lines_Basc to ONTX0_Delivery_Assignments',  --key_name
    'Z_JOIN_FROM_ONTX0_LINES_BASC_TO_ONTX0_DELIVERY_ASSIGNMENTS',  --key_developer_key
    'Z$ join from ONTX0_Lines_Basc to ONTX0_Delivery_Assignments',  --key_description
    NULL,  --key_ext_key
    173042,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    173582,  --fk_obj_id_remote
    0,  --fk_one_to_one
    1,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--21

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$CSG_Service_Requests (CSG_Service_Requests/CSG_Charge_Details) {221781}',  --key_name
    'ZCSG_SERVICE_REQUESTS_CSG_SERVICE_REQUESTSCSG_CHARGE_DETAILS_221781',  --key_developer_key
    'Join master view CSG_Service_Requests to detail view CSG_Charge_Details (Z$CSG_Service_Requests)',  --key_description
    NULL,  --key_ext_key
    199326,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    199949,  --fk_obj_id_remote
    0,  --fk_one_to_one
    1,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    1,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('01-MAY-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);

--22

INSERT INTO eul5_key_cons (
    key_id,
    key_type,
    key_name,
    key_developer_key,
    key_description,
    key_ext_key,
    key_obj_id,
    uk_primary,
    fk_key_id_remote,
    fk_obj_id_remote,
    fk_one_to_one,
    fk_mstr_no_detail,
    fk_dtl_no_master,
    fk_mandatory,
    key_user_prop2,
    key_user_prop1,
    key_element_state,
    key_created_by,
    key_created_date,
    key_updated_by,
    key_updated_date,
    notm
) VALUES (
    eul5_id_seq.nextval,  --key_id
    'FK',  --key_type
    'Z$EAMX0_Work_Orders (EAMX0_Work_Orders/EAMX0_WO_Matrl_Requirements) Outer',  --key_name
    'ZEAMX0_WORK_ORDERS_EAMX0_WORK_ORDERSEAMX0_WO_MATRL_REQUIREMENTS_OUTER',  --key_developer_key
    'Join between EAMX0_Work_Orders.Z$EAMX0_Work_Orders and EAMX0_WO_Matrl_Requirements.Z$EAMX0_Work_Orders',  --key_description
    NULL,  --key_ext_key
    212330,  --key_obj_id
    NULL,  --uk_primary
    NULL,  --fk_key_id_remote
    212512,  --fk_obj_id_remote
    0,  --fk_one_to_one
    1,  --fk_mstr_no_detail
    0,  --fk_dtl_no_master
    0,  --fk_mandatory
    NULL,  --key_user_prop2
    NULL,  --key_user_prop1
    0,  --key_element_state
    'EUL5_US',  --key_created_by
    TO_DATE('21-APR-17','DD-MON-RR'),  --key_created_date
    'EUL5_US',  --key_updated_by
    TO_DATE('21-APR-17','DD-MON-RR'),  --key_updated_date
    0  --notm
);


commit;
----------------------------------------------------


--jp eul5_expressions insertions
DECLARE
    v_eul5_key_cons_key_id   eul5_us.eul5_key_cons.key_id%TYPE;
BEGIN
    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'ZARCS_CS_COMMISSION_RATES_JOIN_TO_ARX0_TRANSACTION_LINE_DTLS';

    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,135432],[6,130303])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('20-APR-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('20-APR-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key =        'Z_JOIN_FROM_ARX0_TRANSACTION_LINE_DTLS_TO_INVX0_ITEMS';


    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,135434],[6,135637])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('15-SEP-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('15-SEP-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_ONTX0_CS_LIST_LINES_ALL__TO_RAAX0_CUSTOMERS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,697420],[6,542208])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMDG_CS_CUST_ITEM_SPEC_REVIEWS_TO_INVG_ITEMS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139062],[6,137565])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMDG_QC_SPECIFICATIONS_TO_INVG_CUSTOMER_ITEMS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,138964],[6,138350])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('12-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('12-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_MATERIAL_DETAILS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139691],[6,139762])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('19-AUG-15','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('19-AUG-15','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_MATERIAL_DETAILS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139639],[6,139762])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_HEADERS_SUMMARY_TO_GMEG_BATCH_STEP_DETAILS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139691],[6,139814])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'ZGMEG_BATCH_HEADERS_GMEG_BATCH_HEADERSGMEG_BATCH_STEP_DETAILS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139639],[6,139814])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('21-AUG-15','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_GMFG_CS_ITEM_COST';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,797885],[6,140036])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('03-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('03-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_MATERIAL_DETAILS_TO_GMFG_CS_ITEM_COST';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139764],[6,140036])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ONHAND_PERIOD_END_TO_INVG_CATEGORY_COSTING';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,797885],[6,140094])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_GMEG_BATCH_STEP_RSRC_ACTVTY_TO_GMFG_RESOURCE_COSTS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,458929],[6,458931])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('16-AUG-15','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('16-AUG-15','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_GMFG_CS_ITEM_COST';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,140036],[6,148898])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139062],[6,148898])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_TO_INVG_CATEGORY_COSTING';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,140094],[6,148898])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_GMFG_CS_ITEM_COST';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,140036],[6,148943])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_ONHAND_BY_LOT_LOC_TO_INVG_CATEGORY_COSTING';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,140094],[6,148943])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_INVG_ITEMS_TO_INVG_ITEM_ONHAND_BY_LOT_LOC';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,139062],[6,148943])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'Z_JOIN_FROM_ONTX0_LINES_BASC_TO_ONTX0_DELIVERY_ASSIGNMENTS';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,173734],[6,173075])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'ZCSG_SERVICE_REQUESTS_CSG_SERVICE_REQUESTSCSG_CHARGE_DETAILS_221781';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,200069],[6,2294504])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('01-MAY-17','DD-MON-RR')
    );


    SELECT
        ekc.key_id
    INTO
        v_eul5_key_cons_key_id
    FROM
        eul5_key_cons ekc
    WHERE
        1 = 1
        AND   ekc.key_type = 'FK'
        AND   ekc.key_developer_key = 'ZEAMX0_WORK_ORDERS_EAMX0_WORK_ORDERSEAMX0_WO_MATRL_REQUIREMENTS_OUTER';



    INSERT INTO eul5_expressions (
        exp_id,
        exp_type,
        exp_name,
        exp_developer_key,
        exp_description,
        exp_formula1,
        exp_data_type,
        exp_sequence,
        it_dom_id,
        it_obj_id,
        it_doc_id,
        it_format_mask,
        it_max_data_width,
        it_max_disp_width,
        it_alignment,
        it_word_wrap,
        it_disp_null_val,
        it_fun_id,
        it_heading,
        it_hidden,
        it_placement,
        it_user_def_fmt,
        it_case_storage,
        it_case_display,
        it_ext_column,
        it_descriptor_id,
        ci_it_id,
        ci_runtime_item,
        par_multiple_vals,
        co_nullable,
        p_case_sensitive,
        jp_key_id,
        fil_obj_id,
        fil_doc_id,
        fil_runtime_filter,
        fil_app_type,
        fil_ext_filter,
        par_optional,
        par_lov_desc_ids,
        exp_user_prop2,
        exp_user_prop1,
        exp_element_state,
        exp_created_by,
        exp_created_date,
        exp_updated_by,
        exp_updated_date
    ) VALUES (
        eul5_id_seq.NEXTVAL,
        'JP',
        'Join Predicate',
        'JOIN_PREDICATE',
        NULL,
        '[1,81]([6,212594],[6,212401])',
        10,
        1,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        1,
        v_eul5_key_cons_key_id,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        0,
        'EUL5_US',
        TO_DATE('21-APR-17','DD-MON-RR'),
        'EUL5_US',
        TO_DATE('21-APR-17','DD-MON-RR')
    );


    COMMIT;
END;
/
