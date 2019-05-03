BEGIN TRANSACTION;
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE IF NOT EXISTS `sysdiagrams` (
	`name`	varchar(255),
	`principal_id`	INTEGER,
	`diagram_id`	INTEGER,
	`version`	INTEGER,
	`definition`	BLOB
);
DROP TABLE IF EXISTS `VEG_STRATA`;
CREATE TABLE IF NOT EXISTS `VEG_STRATA` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`vstr_code`	varchar(255),
	`vstr_growth_form`	varchar(255),
	`vstr_height_class`	varchar(255),
	`vstr_cover_class`	varchar(255),
	`vstr_crown_cover`	REAL,
	`vstr_dist_percent`	TEXT
);
DROP TABLE IF EXISTS `VEG_SPECIES`;
CREATE TABLE IF NOT EXISTS `VEG_SPECIES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`vstr_code`	varchar(255),
	`vsp_no`	varchar(255),
	`vsp_species`	varchar(255),
	`vsp_code`	varchar(255),
	`vsp_anbg_id`	INTEGER,
	`vsp_abun`	TEXT
);
DROP TABLE IF EXISTS `SURF_CONDITIONS`;
CREATE TABLE IF NOT EXISTS `SURF_CONDITIONS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`scon_no`	INTEGER,
	`scon_stat`	TEXT
);
DROP TABLE IF EXISTS `SURF_COARSE_FRAGS`;
CREATE TABLE IF NOT EXISTS `SURF_COARSE_FRAGS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`scf_no`	INTEGER,
	`scf_abun`	varchar(255),
	`scf_size`	varchar(255),
	`scf_shape`	varchar(255),
	`scf_lith`	varchar(255),
	`scf_strength`	TEXT
);
DROP TABLE IF EXISTS `SUB_MINERAL_COMPS`;
CREATE TABLE IF NOT EXISTS `SUB_MINERAL_COMPS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`sb_no`	INTEGER,
	`sb_mineral_comp`	TEXT
);
DROP TABLE IF EXISTS `STRUCTURES`;
CREATE TABLE IF NOT EXISTS `STRUCTURES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`str_no`	INTEGER,
	`str_ped_grade`	varchar(255),
	`str_ped_size`	varchar(255),
	`str_ped_type`	varchar(255),
	`str_compound_ped`	varchar(255),
	`str_clods_frags`	TEXT
);
DROP TABLE IF EXISTS `STRENGTHS`;
CREATE TABLE IF NOT EXISTS `STRENGTHS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`strg_no`	REAL,
	`strg_class`	varchar(255),
	`strg_moisture_stat`	TEXT
);
DROP TABLE IF EXISTS `STATES`;
CREATE TABLE IF NOT EXISTS `STATES` (
	`STATE_CODE`	varchar(255),
	`STATE_NAME`	varchar(255),
	`STATE_NAME_LONG`	TEXT
);
DROP TABLE IF EXISTS `SITE_MNG_PRACS`;
CREATE TABLE IF NOT EXISTS `SITE_MNG_PRACS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`luse_no`	INTEGER,
	`smp_no`	INTEGER,
	`smp_code`	TEXT
);
DROP TABLE IF EXISTS `SITES`;
CREATE TABLE IF NOT EXISTS `SITES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`s_orig_tech_ref`	varchar(255),
	`s_map_scale`	varchar(255),
	`s_map_sheet_no`	varchar(255),
	`s_map_ref_type`	varchar(255),
	`s_photo_film_no`	varchar(255),
	`s_photo_run_no`	varchar(255),
	`s_photo_frame_no`	INTEGER,
	`s_desc_by`	varchar(255),
	`s_rainfall`	INTEGER,
	`s_type`	varchar(255),
	`s_slope_pf`	varchar(255),
	`s_slope`	REAL,
	`s_slope_eval`	varchar(255),
	`s_slope_class`	varchar(255),
	`s_morph_type`	varchar(255),
	`s_elem_inc_slope`	varchar(255),
	`s_elem_length`	REAL,
	`s_elem_width`	REAL,
	`s_elem_height`	varchar(255),
	`s_elem_location`	varchar(255),
	`s_elem_type`	varchar(255),
	`s_relief`	INTEGER,
	`s_modal_slope`	varchar(255),
	`s_relief_class`	varchar(255),
	`s_rel_ms_class`	varchar(255),
	`s_strm_ch_spacing`	varchar(255),
	`s_strm_ch_dev`	varchar(255),
	`s_strm_ch_dtow`	varchar(255),
	`s_strm_ch_mig`	varchar(255),
	`s_strm_ch_patt`	varchar(255),
	`s_strm_ch_net_int`	varchar(255),
	`s_strm_ch_dir_net`	varchar(255),
	`s_patt_type`	varchar(255),
	`s_notes`	varchar(255),
	`s_trans_author`	varchar(255),
	`s_trans_date`	varchar(255),
	`restricted`	INTEGER
);
DROP TABLE IF EXISTS `SEGREGATIONS`;
CREATE TABLE IF NOT EXISTS `SEGREGATIONS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`seg_no`	INTEGER,
	`seg_abun`	varchar(255),
	`seg_nature`	varchar(255),
	`seg_form`	varchar(255),
	`seg_size`	varchar(255),
	`seg_strength`	varchar(255),
	`seg_magnetic_attr`	TEXT
);
DROP TABLE IF EXISTS `SAMPLES`;
CREATE TABLE IF NOT EXISTS `SAMPLES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`samp_upper_depth`	REAL,
	`samp_lower_depth`	REAL,
	`samp_notes`	TEXT
);
DROP TABLE IF EXISTS `ROOTS`;
CREATE TABLE IF NOT EXISTS `ROOTS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`root_no`	INTEGER,
	`root_abun`	varchar(255),
	`root_size`	TEXT
);
DROP TABLE IF EXISTS `ROCK_OUTCROPS`;
CREATE TABLE IF NOT EXISTS `ROCK_OUTCROPS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`ro_no`	INTEGER,
	`ro_abun`	varchar(255),
	`ro_lith`	TEXT
);
DROP TABLE IF EXISTS `PROJECTS`;
CREATE TABLE IF NOT EXISTS `PROJECTS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`proj_name`	varchar(255),
	`proj_manager_code`	varchar(255),
	`proj_biblio_ref`	varchar(255),
	`proj_start_date`	varchar(255),
	`proj_finish_date`	TEXT
);
DROP TABLE IF EXISTS `PORES`;
CREATE TABLE IF NOT EXISTS `PORES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`pore_no`	INTEGER,
	`pore_abun`	varchar(255),
	`pore_diameter`	TEXT
);
DROP TABLE IF EXISTS `PHS`;
CREATE TABLE IF NOT EXISTS `PHS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`ph_no`	INTEGER,
	`ph_value`	REAL,
	`ph_depth`	REAL,
	`ph_method`	TEXT
);
DROP TABLE IF EXISTS `PATT_GEOMORPHS`;
CREATE TABLE IF NOT EXISTS `PATT_GEOMORPHS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`pgm_no`	INTEGER,
	`pgm_mode`	varchar(255),
	`pgm_agent`	varchar(255),
	`pgm_stat`	TEXT
);
DROP TABLE IF EXISTS `PANS`;
CREATE TABLE IF NOT EXISTS `PANS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`pan_no`	INTEGER,
	`pan_cementation`	varchar(255),
	`pan_type`	varchar(255),
	`pan_continuity`	varchar(255),
	`pan_structure`	TEXT
);
DROP TABLE IF EXISTS `OFFICERS`;
CREATE TABLE IF NOT EXISTS `OFFICERS` (
	`agency_code`	varchar(255),
	`offr_code`	varchar(255),
	`offr_name`	TEXT
);
DROP TABLE IF EXISTS `OBS_MNG_PRACS`;
CREATE TABLE IF NOT EXISTS `OBS_MNG_PRACS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`omp_no`	INTEGER,
	`omp_code`	TEXT
);
DROP TABLE IF EXISTS `OBSERVATIONS`;
CREATE TABLE IF NOT EXISTS `OBSERVATIONS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`o_date_desc`	varchar(255),
	`o_type`	varchar(255),
	`o_amg_zone`	INTEGER,
	`o_easting`	INTEGER,
	`o_northing`	INTEGER,
	`o_latitude`	REAL,
	`o_longitude`	REAL,
	`o_datum`	varchar(255),
	`o_latitude_GDA94`	REAL,
	`o_longitude_GDA94`	REAL,
	`o_location_state`	varchar(255),
	`o_location_notes`	varchar(255),
	`o_photo_east`	INTEGER,
	`o_photo_north`	INTEGER,
	`o_land_use`	varchar(255),
	`o_forest_type`	varchar(255),
	`o_rf_complex`	varchar(255),
	`o_rf_leafsize`	varchar(255),
	`o_rf_flor_comp`	varchar(255),
	`o_rf_indicator`	varchar(255),
	`o_rf_emergents`	varchar(255),
	`o_sclerophyll`	varchar(255),
	`o_veg_notes`	varchar(255),
	`o_aspect`	INTEGER,
	`o_elevation_eval`	varchar(255),
	`o_elevation_pf`	varchar(255),
	`o_elevation`	INTEGER,
	`o_drainage_eval`	varchar(255),
	`o_drainage_height`	REAL,
	`o_drainage`	varchar(255),
	`o_mr_sampled`	varchar(255),
	`o_wind_state`	varchar(255),
	`o_wind_deg`	varchar(255),
	`o_scald_state`	varchar(255),
	`o_scald_deg`	varchar(255),
	`o_sheet_state`	varchar(255),
	`o_sheet_deg`	varchar(255),
	`o_wave_state`	varchar(255),
	`o_wave_deg`	varchar(255),
	`o_rill_state`	varchar(255),
	`o_rill_deg`	varchar(255),
	`o_mass_state`	varchar(255),
	`o_mass_deg`	varchar(255),
	`o_gully_state`	varchar(255),
	`o_gully_deg`	varchar(255),
	`o_stbank_state`	varchar(255),
	`o_stbank_deg`	varchar(255),
	`o_tunnel_state`	varchar(255),
	`o_tunnel_deg`	varchar(255),
	`o_other_er_state`	varchar(255),
	`o_other_er_deg`	varchar(255),
	`o_other_er_type`	varchar(255),
	`o_gully_depth`	varchar(255),
	`o_aggradation`	varchar(255),
	`o_inund_freq`	varchar(255),
	`o_inund_dur`	varchar(255),
	`o_inund_depth`	varchar(255),
	`o_inund_runon_vel`	varchar(255),
	`o_depth_water`	REAL,
	`o_depth_water_pref`	varchar(255),
	`o_depth_rhorizon_pf`	varchar(255),
	`o_depth_rhorizon`	REAL,
	`o_runoff`	varchar(255),
	`o_permeability`	varchar(255),
	`o_sb_obs_type`	varchar(255),
	`o_sb_distance`	REAL,
	`o_sb_confidence`	varchar(255),
	`o_sb_depth_pf`	varchar(255),
	`o_sb_depth`	REAL,
	`o_sb_grain_size`	varchar(255),
	`o_sb_texture`	varchar(255),
	`o_sb_structure`	varchar(255),
	`o_sb_porosity`	varchar(255),
	`o_sb_strength`	varchar(255),
	`o_sb_lith`	varchar(255),
	`o_sb_mass_spac_dis`	varchar(255),
	`o_sb_mass_alt`	varchar(255),
	`o_sb_mass_strength`	varchar(255),
	`o_sb_mass_gen_type`	varchar(255),
	`o_substrate_notes`	varchar(255),
	`o_ppf`	varchar(255),
	`o_gsg`	varchar(255),
	`o_asc_tech_ref`	varchar(255),
	`o_asc_conf`	varchar(255),
	`o_asc_ord`	varchar(255),
	`o_asc_subord`	varchar(255),
	`o_asc_gg`	varchar(255),
	`o_asc_subg`	varchar(255),
	`o_asc_fam1`	varchar(255),
	`o_asc_fam2`	varchar(255),
	`o_asc_fam3`	varchar(255),
	`o_asc_fam4`	varchar(255),
	`o_asc_fam5`	varchar(255),
	`o_asc_notes`	varchar(255),
	`o_uni_soil_class`	varchar(255),
	`o_soil_taxonomy`	varchar(255),
	`o_tax_unit_type`	varchar(255),
	`o_tax_unit_name`	varchar(255),
	`o_map_unit_type`	varchar(255),
	`o_map_unit_name`	varchar(255),
	`o_notes`	varchar(255),
	`oc_sheet_depth`	varchar(255),
	`oc_sheet_width`	varchar(255),
	`oc_rill_depth`	varchar(255),
	`oc_rill_width`	varchar(255),
	`oc_gully_depth`	varchar(255),
	`oc_gully_width`	varchar(255),
	`oc_wind_depth`	varchar(255),
	`oc_wind_width`	varchar(255),
	`oc_tree_bas_area`	varchar(255),
	`oc_bas_area_grass`	varchar(255),
	`oc_photo_profile`	varchar(255),
	`oc_photo_landscape`	varchar(255),
	`oc_native_weed_cd`	varchar(255),
	`oc_native_weed_ext`	varchar(255),
	`oc_publ_status`	varchar(255),
	`oc_publ_journal`	varchar(255),
	`oc_publ_date`	varchar(255),
	`oc_publ_no`	varchar(255),
	`oc_publ_page_no`	varchar(255),
	`oc_samp_avail`	varchar(255),
	`oc_geological_ref`	varchar(255),
	PRIMARY KEY(`agency_code`,`proj_code`,`s_id`,`o_id`)
);
DROP TABLE IF EXISTS `NatSoil_Lab_Method_QA`;
CREATE TABLE IF NOT EXISTS `NatSoil_Lab_Method_QA` (
	`LABM_CODE`	varchar(255),
	`LABP_CODE`	varchar(255),
	`LABMT_CODE`	varchar(255),
	`LABM_NAME`	varchar(255),
	`LABM_SHORT_NAME`	varchar(255),
	`LABM_SHORT_NAME_Orig`	varchar(255),
	`LABM_REF`	varchar(255),
	`LABM_MASK`	varchar(255),
	`LABM_UNITS`	varchar(255),
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	varchar(255),
	`UnitConversion`	REAL
);
DROP TABLE IF EXISTS `NatSoil_Lab_Method_GroupQA`;
CREATE TABLE IF NOT EXISTS `NatSoil_Lab_Method_GroupQA` (
	`LabGroupName`	varchar(255),
	`minVal`	REAL,
	`maxVal`	REAL,
	`DefaultUnits`	TEXT
);
DROP TABLE IF EXISTS `MOTTLES`;
CREATE TABLE IF NOT EXISTS `MOTTLES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`mott_no`	INTEGER,
	`mott_type`	varchar(255),
	`mott_abun`	varchar(255),
	`mott_size`	varchar(255),
	`mott_contrast`	varchar(255),
	`mott_hue_val_chrom`	varchar(255),
	`mott_hue`	varchar(255),
	`mott_value`	REAL,
	`mott_chroma`	REAL,
	`mott_moisture_stat`	varchar(255),
	`mott_colour`	varchar(255),
	`mott_boun_distinct`	TEXT
);
DROP TABLE IF EXISTS `MICRORELIEFS`;
CREATE TABLE IF NOT EXISTS `MICRORELIEFS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`mr_no`	INTEGER,
	`mr_type`	varchar(255),
	`mr_prop_gilgai`	varchar(255),
	`mr_biotic_agent`	varchar(255),
	`mr_biotic_comp`	varchar(255),
	`mr_vertical_int`	REAL,
	`mr_horiz_int`	REAL
);
DROP TABLE IF EXISTS `LabMethodQA`;
CREATE TABLE IF NOT EXISTS `LabMethodQA` (
	`LABM_CODE`	varchar(255),
	`LABP_CODE`	varchar(255),
	`LABMT_CODE`	varchar(255),
	`LABM_NAME`	varchar(255),
	`LABM_SHORT_NAME`	varchar(255),
	`LABM_REF`	varchar(255),
	`LABM_MASK`	varchar(255),
	`LABM_UNITS`	varchar(255),
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	TEXT
);
DROP TABLE IF EXISTS `LAND_USES`;
CREATE TABLE IF NOT EXISTS `LAND_USES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`luse_no`	INTEGER,
	`land_use`	TEXT
);
DROP TABLE IF EXISTS `LAND_CAPABILITIES`;
CREATE TABLE IF NOT EXISTS `LAND_CAPABILITIES` (
	`PS_ID`	varchar(255),
	`F_ID`	varchar(255),
	`LC_N0`	INTEGER,
	`LC_SUBCLASS_E`	varchar(255),
	`LC_SUBCLASS_T`	varchar(255),
	`LC_SUBCLASS_G`	varchar(255),
	`LC_SUBCLASS_R`	varchar(255),
	`LC_SUBCLASS_D`	varchar(255),
	`LC_SUBCLASS_P`	varchar(255),
	`LC_SUBCLASS_K`	varchar(255),
	`LC_SUBCLASS_S`	varchar(255),
	`LC_SUBCLASS_M`	varchar(255),
	`LC_SUBCLASS_W`	varchar(255),
	`LC_CLASS`	TEXT
);
DROP TABLE IF EXISTS `LAB_RESULTS`;
CREATE TABLE IF NOT EXISTS `LAB_RESULTS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`labr_no`	INTEGER,
	`labm_code`	varchar(255),
	`labr_value_prefix`	varchar(255),
	`labr_value`	REAL,
	`labr_low_value`	REAL,
	`labr_high_value`	REAL,
	`labr_analysis_type`	varchar(255),
	`labr_anal_date`	varchar(255),
	PRIMARY KEY(`agency_code`,`proj_code`,`s_id`,`o_id`,`h_no`,`samp_no`,`labr_no`,`labm_code`)
);
DROP TABLE IF EXISTS `LAB_PROPERTIES`;
CREATE TABLE IF NOT EXISTS `LAB_PROPERTIES` (
	`LABP_CODE`	varchar(255),
	`LABP_NAME`	TEXT
);
DROP TABLE IF EXISTS `LAB_METHOD_TYPES`;
CREATE TABLE IF NOT EXISTS `LAB_METHOD_TYPES` (
	`LABMT_CODE`	varchar(255),
	`LABMT_NAME`	TEXT
);
DROP TABLE IF EXISTS `LAB_METHODS`;
CREATE TABLE IF NOT EXISTS `LAB_METHODS` (
	`AGENCY_CODE`	varchar(255),
	`LABM_CODE`	varchar(255),
	`LABP_CODE`	varchar(255),
	`LABMT_CODE`	varchar(255),
	`LABM_NAME`	varchar(255),
	`LABM_SHORT_NAME`	varchar(255),
	`LABM_SHORT_NAME_Orig`	varchar(255),
	`LABM_REF`	varchar(255),
	`LABM_MASK`	varchar(255),
	`LABM_UNITS`	varchar(255),
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	varchar(255),
	PRIMARY KEY(`AGENCY_CODE`,`LABM_CODE`)
);
DROP TABLE IF EXISTS `HORIZONS`;
CREATE TABLE IF NOT EXISTS `HORIZONS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`h_desig_num_pref`	INTEGER,
	`h_desig_master`	varchar(255),
	`h_desig_subdiv`	INTEGER,
	`h_desig_suffix`	varchar(255),
	`h_upper_depth`	REAL,
	`h_lower_depth`	REAL,
	`h_texture`	varchar(255),
	`h_texture_qual`	varchar(255),
	`h_soil_water_stat`	varchar(255),
	`h_stickiness`	varchar(255),
	`h_plasticity_type`	varchar(255),
	`h_plasticity_deg`	varchar(255),
	`h_water_repellence`	varchar(255),
	`h_carbonate_eff`	varchar(255),
	`h_bound_distinct`	varchar(255),
	`h_bound_shape`	varchar(255),
	`h_permeability`	varchar(255),
	`h_notes`	varchar(255),
	`h_ec`	varchar(255),
	`h_salinity_depth`	varchar(255),
	`h_dispersion`	TEXT
);
DROP TABLE IF EXISTS `FABRICS`;
CREATE TABLE IF NOT EXISTS `FABRICS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`fab_no`	INTEGER,
	`fab_type`	varchar(255),
	`fab_abun`	TEXT
);
DROP TABLE IF EXISTS `EXOTICS`;
CREATE TABLE IF NOT EXISTS `EXOTICS` (
	`AGENCY_CODE`	varchar(255),
	`PROJ_CODE`	varchar(255),
	`S_ID`	varchar(255),
	`O_ID`	varchar(255),
	`EX_NO`	REAL,
	`EX_SPECIES_CODE`	varchar(255),
	`EX_EXTENT`	REAL
);
DROP TABLE IF EXISTS `ELEM_GEOMORPHS`;
CREATE TABLE IF NOT EXISTS `ELEM_GEOMORPHS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`egm_no`	INTEGER,
	`egm_mode`	varchar(255),
	`egm_agent`	TEXT
);
DROP TABLE IF EXISTS `DISTURBANCES`;
CREATE TABLE IF NOT EXISTS `DISTURBANCES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`dist_no`	REAL,
	`dist_type`	TEXT
);
DROP TABLE IF EXISTS `CourseFragCodes`;
CREATE TABLE IF NOT EXISTS `CourseFragCodes` (
	`code`	varchar(255),
	`range`	varchar(255),
	`val`	REAL
);
DROP TABLE IF EXISTS `CUTANS`;
CREATE TABLE IF NOT EXISTS `CUTANS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`cutan_no`	INTEGER,
	`cutan_type`	varchar(255),
	`cutan_abun`	varchar(255),
	`cutan_distinct`	TEXT
);
DROP TABLE IF EXISTS `CRACKS`;
CREATE TABLE IF NOT EXISTS `CRACKS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`crack_no`	INTEGER,
	`crack_width`	TEXT
);
DROP TABLE IF EXISTS `COLOURS`;
CREATE TABLE IF NOT EXISTS `COLOURS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`col_no`	REAL,
	`col_hue_val_chrom`	varchar(255),
	`col_hue`	varchar(255),
	`col_value`	REAL,
	`col_chroma`	REAL,
	`col_moisture_stat`	TEXT
);
DROP TABLE IF EXISTS `CODES`;
CREATE TABLE IF NOT EXISTS `CODES` (
	`AGENCY_CODE`	varchar(255),
	`CODE_DOMAIN`	varchar(255),
	`CODE_VALUE`	varchar(255),
	`CODE_VALUE2`	varchar(255),
	`CODE_VALUE3`	varchar(255),
	`CODE_DESC`	varchar(255),
	`CODE_TECH_REF`	varchar(255),
	`CODE_AVG_NO_VALUE`	REAL,
	`CODE_LOW_NO_VALUE`	REAL,
	`CODE_HIGH_NO_VALUE`	REAL
);
DROP TABLE IF EXISTS `COARSE_FRAGS`;
CREATE TABLE IF NOT EXISTS `COARSE_FRAGS` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`cf_no`	INTEGER,
	`cf_abun`	varchar(255),
	`cf_size`	varchar(255),
	`cf_shape`	varchar(255),
	`cf_lith`	varchar(255),
	`cf_strength`	varchar(255),
	`cf_distribution`	TEXT
);
DROP TABLE IF EXISTS `ARCHIVE_SAMPLES`;
CREATE TABLE IF NOT EXISTS `ARCHIVE_SAMPLES` (
	`agency_code`	varchar(255),
	`proj_code`	varchar(255),
	`s_id`	varchar(255),
	`o_id`	varchar(255),
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`jar_no`	REAL,
	`samp_type`	varchar(255),
	`location`	varchar(255),
	`weight`	REAL,
	`>2mm`	INTEGER,
	`spec_id`	INTEGER,
	`subsample_date`	varchar(255),
	`subsample_tray`	TEXT
);
DROP TABLE IF EXISTS `AGENCIES`;
CREATE TABLE IF NOT EXISTS `AGENCIES` (
	`STATE_CODE`	varchar(255),
	`AGENCY_CODE`	varchar(255),
	`AGENCY_NAME`	varchar(255),
	`AGENCY_ACRONYM`	TEXT
);
DROP INDEX IF EXISTS `idx_vegStrata`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_vegStrata` ON `VEG_STRATA` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`vstr_code`
);
DROP INDEX IF EXISTS `idx_vegSpecies`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_vegSpecies` ON `VEG_SPECIES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`vstr_code`,
	`vsp_no`
);
DROP INDEX IF EXISTS `idx_surfaceCoarseFrags`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_surfaceCoarseFrags` ON `SURF_COARSE_FRAGS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`scf_no`
);
DROP INDEX IF EXISTS `idx_surfConditions`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_surfConditions` ON `SURF_CONDITIONS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`scon_no`
);
DROP INDEX IF EXISTS `idx_subMineralComps`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_subMineralComps` ON `SUB_MINERAL_COMPS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`sb_no`
);
DROP INDEX IF EXISTS `idx_structures`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_structures` ON `STRUCTURES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`str_no`
);
DROP INDEX IF EXISTS `idx_strengths`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_strengths` ON `STRENGTHS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`strg_no`
);
DROP INDEX IF EXISTS `idx_states`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_states` ON `STATES` (
	`STATE_CODE`
);
DROP INDEX IF EXISTS `idx_sites`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_sites` ON `SITES` (
	`agency_code`,
	`proj_code`,
	`s_id`
);
DROP INDEX IF EXISTS `idx_siteMgtPacs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_siteMgtPacs` ON `SITE_MNG_PRACS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`luse_no`
);
DROP INDEX IF EXISTS `idx_segregations`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_segregations` ON `SEGREGATIONS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`seg_no`
);
DROP INDEX IF EXISTS `idx_samples`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_samples` ON `SAMPLES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`samp_no`
);
DROP INDEX IF EXISTS `idx_roots`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_roots` ON `ROOTS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`root_no`
);
DROP INDEX IF EXISTS `idx_rockOutcrops`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_rockOutcrops` ON `ROCK_OUTCROPS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`ro_no`
);
DROP INDEX IF EXISTS `idx_projects`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_projects` ON `PROJECTS` (
	`agency_code`,
	`proj_code`
);
DROP INDEX IF EXISTS `idx_phs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_phs` ON `PHS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`ph_no`
);
DROP INDEX IF EXISTS `idx_pans`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_pans` ON `PANS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`pan_no`
);
DROP INDEX IF EXISTS `idx_officers`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_officers` ON `OFFICERS` (
	`agency_code`,
	`offr_code`
);
DROP INDEX IF EXISTS `idx_obsmgtpracs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_obsmgtpracs` ON `OBS_MNG_PRACS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`omp_no`
);
DROP INDEX IF EXISTS `idx_observations`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_observations` ON `OBSERVATIONS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`
);
DROP INDEX IF EXISTS `idx_mottles`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_mottles` ON `MOTTLES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`mott_no`
);
DROP INDEX IF EXISTS `idx_microreliefs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_microreliefs` ON `MICRORELIEFS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`mr_no`
);
DROP INDEX IF EXISTS `idx_landuses`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_landuses` ON `LAND_USES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`luse_no`
);
DROP INDEX IF EXISTS `idx_labMethods`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_labMethods` ON `LAB_METHODS` (
	`AGENCY_CODE`,
	`LABM_CODE`
);
DROP INDEX IF EXISTS `idx_horizons`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_horizons` ON `HORIZONS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`
);
DROP INDEX IF EXISTS `idx_fabrics`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_fabrics` ON `FABRICS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`fab_no`
);
DROP INDEX IF EXISTS `idx_exotics`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_exotics` ON `EXOTICS` (
	`AGENCY_CODE`,
	`PROJ_CODE`,
	`S_ID`,
	`O_ID`,
	`EX_NO`
);
DROP INDEX IF EXISTS `idx_elemGeomorphs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_elemGeomorphs` ON `ELEM_GEOMORPHS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`egm_no`
);
DROP INDEX IF EXISTS `idx_disturbances`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_disturbances` ON `DISTURBANCES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`dist_no`
);
DROP INDEX IF EXISTS `idx_cutans`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_cutans` ON `CUTANS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`cutan_no`
);
DROP INDEX IF EXISTS `idx_colors`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_colors` ON `COLOURS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`col_no`
);
DROP INDEX IF EXISTS `idx_codes`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_codes` ON `CODES` (
	`AGENCY_CODE`,
	`CODE_DOMAIN`,
	`CODE_VALUE`
);
DROP INDEX IF EXISTS `idx_coarseFrags`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_coarseFrags` ON `COARSE_FRAGS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`cf_no`
);
DROP INDEX IF EXISTS `idx_Pores`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_Pores` ON `PORES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`pore_no`
);
DROP INDEX IF EXISTS `idx_LabResults`;
CREATE INDEX IF NOT EXISTS `idx_LabResults` ON `LAB_RESULTS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`samp_no`,
	`labr_no`
);
DROP INDEX IF EXISTS `idx_Archive_Samples`;
CREATE INDEX IF NOT EXISTS `idx_Archive_Samples` ON `ARCHIVE_SAMPLES` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`o_id`,
	`h_no`,
	`samp_no`
);
DROP INDEX IF EXISTS `idx_Agencies`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx_Agencies` ON `AGENCIES` (
	`STATE_CODE`,
	`AGENCY_CODE`
);
DROP INDEX IF EXISTS `idx+patt_geomporphs`;
CREATE UNIQUE INDEX IF NOT EXISTS `idx+patt_geomporphs` ON `PATT_GEOMORPHS` (
	`agency_code`,
	`proj_code`,
	`s_id`,
	`pgm_no`
);
COMMIT;
