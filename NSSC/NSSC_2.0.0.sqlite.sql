BEGIN TRANSACTION;
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE IF NOT EXISTS `sysdiagrams` (
	`name`	TEXT,
	`principal_id`	INTEGER,
	`diagram_id`	INTEGER,
	`version`	INTEGER,
	`definition`	BLOB
);
DROP TABLE IF EXISTS `VEG_STRATA`;
CREATE TABLE IF NOT EXISTS `VEG_STRATA` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`vstr_code`	TEXT,
	`vstr_growth_form`	TEXT,
	`vstr_height_class`	TEXT,
	`vstr_cover_class`	TEXT,
	`vstr_crown_cover`	REAL,
	`vstr_dist_percent`	TEXT
);
DROP TABLE IF EXISTS `VEG_SPECIES`;
CREATE TABLE IF NOT EXISTS `VEG_SPECIES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`vstr_code`	TEXT,
	`vsp_no`	TEXT,
	`vsp_species`	TEXT,
	`vsp_code`	TEXT,
	`vsp_anbg_id`	INTEGER,
	`vsp_abun`	TEXT
);
DROP TABLE IF EXISTS `SURF_CONDITIONS`;
CREATE TABLE IF NOT EXISTS `SURF_CONDITIONS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`scon_no`	INTEGER,
	`scon_stat`	TEXT
);
DROP TABLE IF EXISTS `SURF_COARSE_FRAGS`;
CREATE TABLE IF NOT EXISTS `SURF_COARSE_FRAGS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`scf_no`	INTEGER,
	`scf_abun`	TEXT,
	`scf_size`	TEXT,
	`scf_shape`	TEXT,
	`scf_lith`	TEXT,
	`scf_strength`	TEXT
);
DROP TABLE IF EXISTS `SUB_MINERAL_COMPS`;
CREATE TABLE IF NOT EXISTS `SUB_MINERAL_COMPS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`sb_no`	INTEGER,
	`sb_mineral_comp`	TEXT
);
DROP TABLE IF EXISTS `STRUCTURES`;
CREATE TABLE IF NOT EXISTS `STRUCTURES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`str_no`	INTEGER,
	`str_ped_grade`	TEXT,
	`str_ped_size`	TEXT,
	`str_ped_type`	TEXT,
	`str_compound_ped`	TEXT,
	`str_clods_frags`	TEXT
);
DROP TABLE IF EXISTS `STRENGTHS`;
CREATE TABLE IF NOT EXISTS `STRENGTHS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`strg_no`	REAL,
	`strg_class`	TEXT,
	`strg_moisture_stat`	TEXT
);
DROP TABLE IF EXISTS `STATES`;
CREATE TABLE IF NOT EXISTS `STATES` (
	`STATE_CODE`	TEXT,
	`STATE_NAME`	TEXT,
	`STATE_NAME_LONG`	TEXT
);
DROP TABLE IF EXISTS `SITE_MNG_PRACS`;
CREATE TABLE IF NOT EXISTS `SITE_MNG_PRACS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`luse_no`	INTEGER,
	`smp_no`	INTEGER,
	`smp_code`	TEXT
);
DROP TABLE IF EXISTS `SITES`;
CREATE TABLE IF NOT EXISTS `SITES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`s_orig_tech_ref`	TEXT,
	`s_map_scale`	TEXT,
	`s_map_sheet_no`	TEXT,
	`s_map_ref_type`	TEXT,
	`s_photo_film_no`	TEXT,
	`s_photo_run_no`	TEXT,
	`s_photo_frame_no`	INTEGER,
	`s_desc_by`	TEXT,
	`s_rainfall`	INTEGER,
	`s_type`	TEXT,
	`s_slope_pf`	TEXT,
	`s_slope`	REAL,
	`s_slope_eval`	TEXT,
	`s_slope_class`	TEXT,
	`s_morph_type`	TEXT,
	`s_elem_inc_slope`	TEXT,
	`s_elem_length`	REAL,
	`s_elem_width`	REAL,
	`s_elem_height`	TEXT,
	`s_elem_location`	TEXT,
	`s_elem_type`	TEXT,
	`s_relief`	INTEGER,
	`s_modal_slope`	TEXT,
	`s_relief_class`	TEXT,
	`s_rel_ms_class`	TEXT,
	`s_strm_ch_spacing`	TEXT,
	`s_strm_ch_dev`	TEXT,
	`s_strm_ch_dtow`	TEXT,
	`s_strm_ch_mig`	TEXT,
	`s_strm_ch_patt`	TEXT,
	`s_strm_ch_net_int`	TEXT,
	`s_strm_ch_dir_net`	TEXT,
	`s_patt_type`	TEXT,
	`s_notes`	TEXT,
	`s_trans_author`	TEXT,
	`s_trans_date`	TEXT,
	`restricted`	INTEGER
);
DROP TABLE IF EXISTS `SEGREGATIONS`;
CREATE TABLE IF NOT EXISTS `SEGREGATIONS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`seg_no`	INTEGER,
	`seg_abun`	TEXT,
	`seg_nature`	TEXT,
	`seg_form`	TEXT,
	`seg_size`	TEXT,
	`seg_strength`	TEXT,
	`seg_magnetic_attr`	TEXT
);
DROP TABLE IF EXISTS `SAMPLES`;
CREATE TABLE IF NOT EXISTS `SAMPLES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`samp_upper_depth`	REAL,
	`samp_lower_depth`	REAL,
	`samp_notes`	TEXT
);
DROP TABLE IF EXISTS `ROOTS`;
CREATE TABLE IF NOT EXISTS `ROOTS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`root_no`	INTEGER,
	`root_abun`	TEXT,
	`root_size`	TEXT
);
DROP TABLE IF EXISTS `ROCK_OUTCROPS`;
CREATE TABLE IF NOT EXISTS `ROCK_OUTCROPS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`ro_no`	INTEGER,
	`ro_abun`	TEXT,
	`ro_lith`	TEXT
);
DROP TABLE IF EXISTS `PROJECTS`;
CREATE TABLE IF NOT EXISTS `PROJECTS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`proj_name`	TEXT,
	`proj_manager_code`	TEXT,
	`proj_biblio_ref`	TEXT,
	`proj_start_date`	TEXT,
	`proj_finish_date`	TEXT
);
DROP TABLE IF EXISTS `PORES`;
CREATE TABLE IF NOT EXISTS `PORES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`pore_no`	INTEGER,
	`pore_abun`	TEXT,
	`pore_diameter`	TEXT
);
DROP TABLE IF EXISTS `PHS`;
CREATE TABLE IF NOT EXISTS `PHS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`ph_no`	INTEGER,
	`ph_value`	REAL,
	`ph_depth`	REAL,
	`ph_method`	TEXT
);
DROP TABLE IF EXISTS `PATT_GEOMORPHS`;
CREATE TABLE IF NOT EXISTS `PATT_GEOMORPHS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`pgm_no`	INTEGER,
	`pgm_mode`	TEXT,
	`pgm_agent`	TEXT,
	`pgm_stat`	TEXT
);
DROP TABLE IF EXISTS `PANS`;
CREATE TABLE IF NOT EXISTS `PANS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`pan_no`	INTEGER,
	`pan_cementation`	TEXT,
	`pan_type`	TEXT,
	`pan_continuity`	TEXT,
	`pan_structure`	TEXT
);
DROP TABLE IF EXISTS `OFFICERS`;
CREATE TABLE IF NOT EXISTS `OFFICERS` (
	`agency_code`	TEXT,
	`offr_code`	TEXT,
	`offr_name`	TEXT
);
DROP TABLE IF EXISTS `OBS_MNG_PRACS`;
CREATE TABLE IF NOT EXISTS `OBS_MNG_PRACS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`omp_no`	INTEGER,
	`omp_code`	TEXT
);
DROP TABLE IF EXISTS `OBSERVATIONS`;
CREATE TABLE IF NOT EXISTS `OBSERVATIONS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`o_date_desc`	TEXT,
	`o_type`	TEXT,
	`o_amg_zone`	INTEGER,
	`o_easting`	INTEGER,
	`o_northing`	INTEGER,
	`o_latitude`	REAL,
	`o_longitude`	REAL,
	`o_datum`	TEXT,
	`o_latitude_GDA94`	REAL,
	`o_longitude_GDA94`	REAL,
	`o_location_state`	TEXT,
	`o_location_notes`	TEXT,
	`o_photo_east`	INTEGER,
	`o_photo_north`	INTEGER,
	`o_land_use`	TEXT,
	`o_forest_type`	TEXT,
	`o_rf_complex`	TEXT,
	`o_rf_leafsize`	TEXT,
	`o_rf_flor_comp`	TEXT,
	`o_rf_indicator`	TEXT,
	`o_rf_emergents`	TEXT,
	`o_sclerophyll`	TEXT,
	`o_veg_notes`	TEXT,
	`o_aspect`	INTEGER,
	`o_elevation_eval`	TEXT,
	`o_elevation_pf`	TEXT,
	`o_elevation`	INTEGER,
	`o_drainage_eval`	TEXT,
	`o_drainage_height`	REAL,
	`o_drainage`	TEXT,
	`o_mr_sampled`	TEXT,
	`o_wind_state`	TEXT,
	`o_wind_deg`	TEXT,
	`o_scald_state`	TEXT,
	`o_scald_deg`	TEXT,
	`o_sheet_state`	TEXT,
	`o_sheet_deg`	TEXT,
	`o_wave_state`	TEXT,
	`o_wave_deg`	TEXT,
	`o_rill_state`	TEXT,
	`o_rill_deg`	TEXT,
	`o_mass_state`	TEXT,
	`o_mass_deg`	TEXT,
	`o_gully_state`	TEXT,
	`o_gully_deg`	TEXT,
	`o_stbank_state`	TEXT,
	`o_stbank_deg`	TEXT,
	`o_tunnel_state`	TEXT,
	`o_tunnel_deg`	TEXT,
	`o_other_er_state`	TEXT,
	`o_other_er_deg`	TEXT,
	`o_other_er_type`	TEXT,
	`o_gully_depth`	TEXT,
	`o_aggradation`	TEXT,
	`o_inund_freq`	TEXT,
	`o_inund_dur`	TEXT,
	`o_inund_depth`	TEXT,
	`o_inund_runon_vel`	TEXT,
	`o_depth_water`	REAL,
	`o_depth_water_pref`	TEXT,
	`o_depth_rhorizon_pf`	TEXT,
	`o_depth_rhorizon`	REAL,
	`o_runoff`	TEXT,
	`o_permeability`	TEXT,
	`o_sb_obs_type`	TEXT,
	`o_sb_distance`	REAL,
	`o_sb_confidence`	TEXT,
	`o_sb_depth_pf`	TEXT,
	`o_sb_depth`	REAL,
	`o_sb_grain_size`	TEXT,
	`o_sb_texture`	TEXT,
	`o_sb_structure`	TEXT,
	`o_sb_porosity`	TEXT,
	`o_sb_strength`	TEXT,
	`o_sb_lith`	TEXT,
	`o_sb_mass_spac_dis`	TEXT,
	`o_sb_mass_alt`	TEXT,
	`o_sb_mass_strength`	TEXT,
	`o_sb_mass_gen_type`	TEXT,
	`o_substrate_notes`	TEXT,
	`o_ppf`	TEXT,
	`o_gsg`	TEXT,
	`o_asc_tech_ref`	TEXT,
	`o_asc_conf`	TEXT,
	`o_asc_ord`	TEXT,
	`o_asc_subord`	TEXT,
	`o_asc_gg`	TEXT,
	`o_asc_subg`	TEXT,
	`o_asc_fam1`	TEXT,
	`o_asc_fam2`	TEXT,
	`o_asc_fam3`	TEXT,
	`o_asc_fam4`	TEXT,
	`o_asc_fam5`	TEXT,
	`o_asc_notes`	TEXT,
	`o_uni_soil_class`	TEXT,
	`o_soil_taxonomy`	TEXT,
	`o_tax_unit_type`	TEXT,
	`o_tax_unit_name`	TEXT,
	`o_map_unit_type`	TEXT,
	`o_map_unit_name`	TEXT,
	`o_notes`	TEXT,
	`oc_sheet_depth`	TEXT,
	`oc_sheet_width`	TEXT,
	`oc_rill_depth`	TEXT,
	`oc_rill_width`	TEXT,
	`oc_gully_depth`	TEXT,
	`oc_gully_width`	TEXT,
	`oc_wind_depth`	TEXT,
	`oc_wind_width`	TEXT,
	`oc_tree_bas_area`	TEXT,
	`oc_bas_area_grass`	TEXT,
	`oc_photo_profile`	TEXT,
	`oc_photo_landscape`	TEXT,
	`oc_native_weed_cd`	TEXT,
	`oc_native_weed_ext`	TEXT,
	`oc_publ_status`	TEXT,
	`oc_publ_journal`	TEXT,
	`oc_publ_date`	TEXT,
	`oc_publ_no`	TEXT,
	`oc_publ_page_no`	TEXT,
	`oc_samp_avail`	TEXT,
	`oc_geological_ref`	TEXT,
	PRIMARY KEY(`agency_code`,`proj_code`,`s_id`,`o_id`)
);
DROP TABLE IF EXISTS `NatSoil_Lab_Method_QA`;
CREATE TABLE IF NOT EXISTS `NatSoil_Lab_Method_QA` (
	`LABM_CODE`	TEXT,
	`LABP_CODE`	TEXT,
	`LABMT_CODE`	TEXT,
	`LABM_NAME`	TEXT,
	`LABM_SHORT_NAME`	TEXT,
	`LABM_SHORT_NAME_Orig`	TEXT,
	`LABM_REF`	TEXT,
	`LABM_MASK`	TEXT,
	`LABM_UNITS`	TEXT,
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	TEXT,
	`UnitConversion`	REAL
);
DROP TABLE IF EXISTS `NatSoil_Lab_Method_GroupQA`;
CREATE TABLE IF NOT EXISTS `NatSoil_Lab_Method_GroupQA` (
	`LabGroupName`	TEXT,
	`minVal`	REAL,
	`maxVal`	REAL,
	`DefaultUnits`	TEXT
);
DROP TABLE IF EXISTS `MOTTLES`;
CREATE TABLE IF NOT EXISTS `MOTTLES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`mott_no`	INTEGER,
	`mott_type`	TEXT,
	`mott_abun`	TEXT,
	`mott_size`	TEXT,
	`mott_contrast`	TEXT,
	`mott_hue_val_chrom`	TEXT,
	`mott_hue`	TEXT,
	`mott_value`	REAL,
	`mott_chroma`	REAL,
	`mott_moisture_stat`	TEXT,
	`mott_colour`	TEXT,
	`mott_boun_distinct`	TEXT
);
DROP TABLE IF EXISTS `MICRORELIEFS`;
CREATE TABLE IF NOT EXISTS `MICRORELIEFS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`mr_no`	INTEGER,
	`mr_type`	TEXT,
	`mr_prop_gilgai`	TEXT,
	`mr_biotic_agent`	TEXT,
	`mr_biotic_comp`	TEXT,
	`mr_vertical_int`	REAL,
	`mr_horiz_int`	REAL
);
DROP TABLE IF EXISTS `LabMethodQA`;
CREATE TABLE IF NOT EXISTS `LabMethodQA` (
	`LABM_CODE`	TEXT,
	`LABP_CODE`	TEXT,
	`LABMT_CODE`	TEXT,
	`LABM_NAME`	TEXT,
	`LABM_SHORT_NAME`	TEXT,
	`LABM_REF`	TEXT,
	`LABM_MASK`	TEXT,
	`LABM_UNITS`	TEXT,
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	TEXT
);
DROP TABLE IF EXISTS `LAND_USES`;
CREATE TABLE IF NOT EXISTS `LAND_USES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`luse_no`	INTEGER,
	`land_use`	TEXT
);
DROP TABLE IF EXISTS `LAND_CAPABILITIES`;
CREATE TABLE IF NOT EXISTS `LAND_CAPABILITIES` (
	`PS_ID`	TEXT,
	`F_ID`	TEXT,
	`LC_N0`	INTEGER,
	`LC_SUBCLASS_E`	TEXT,
	`LC_SUBCLASS_T`	TEXT,
	`LC_SUBCLASS_G`	TEXT,
	`LC_SUBCLASS_R`	TEXT,
	`LC_SUBCLASS_D`	TEXT,
	`LC_SUBCLASS_P`	TEXT,
	`LC_SUBCLASS_K`	TEXT,
	`LC_SUBCLASS_S`	TEXT,
	`LC_SUBCLASS_M`	TEXT,
	`LC_SUBCLASS_W`	TEXT,
	`LC_CLASS`	TEXT
);
DROP TABLE IF EXISTS `LAB_RESULTS`;
CREATE TABLE IF NOT EXISTS `LAB_RESULTS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`labr_no`	INTEGER,
	`labm_code`	TEXT,
	`labr_value_prefix`	TEXT,
	`labr_value`	REAL,
	`labr_low_value`	REAL,
	`labr_high_value`	REAL,
	`labr_analysis_type`	TEXT,
	`labr_anal_date`	TEXT,
	PRIMARY KEY(`agency_code`,`proj_code`,`s_id`,`o_id`,`h_no`,`samp_no`,`labr_no`,`labm_code`)
);
DROP TABLE IF EXISTS `LAB_PROPERTIES`;
CREATE TABLE IF NOT EXISTS `LAB_PROPERTIES` (
	`LABP_CODE`	TEXT,
	`LABP_NAME`	TEXT
);
DROP TABLE IF EXISTS `LAB_METHOD_TYPES`;
CREATE TABLE IF NOT EXISTS `LAB_METHOD_TYPES` (
	`LABMT_CODE`	TEXT,
	`LABMT_NAME`	TEXT
);
DROP TABLE IF EXISTS `LAB_METHODS`;
CREATE TABLE IF NOT EXISTS `LAB_METHODS` (
	`AGENCY_CODE`	TEXT,
	`LABM_CODE`	TEXT,
	`LABP_CODE`	TEXT,
	`LABMT_CODE`	TEXT,
	`LABM_NAME`	TEXT,
	`LABM_SHORT_NAME`	TEXT,
	`LABM_SHORT_NAME_Orig`	TEXT,
	`LABM_REF`	TEXT,
	`LABM_MASK`	TEXT,
	`LABM_UNITS`	TEXT,
	`LABM_LOW_VALUE`	REAL,
	`LABM_HIGH_VALUE`	REAL,
	`est_type`	TEXT,
	PRIMARY KEY(`AGENCY_CODE`,`LABM_CODE`)
);
DROP TABLE IF EXISTS `HORIZONS`;
CREATE TABLE IF NOT EXISTS `HORIZONS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`h_desig_num_pref`	INTEGER,
	`h_desig_master`	TEXT,
	`h_desig_subdiv`	INTEGER,
	`h_desig_suffix`	TEXT,
	`h_upper_depth`	REAL,
	`h_lower_depth`	REAL,
	`h_texture`	TEXT,
	`h_texture_qual`	TEXT,
	`h_soil_water_stat`	TEXT,
	`h_stickiness`	TEXT,
	`h_plasticity_type`	TEXT,
	`h_plasticity_deg`	TEXT,
	`h_water_repellence`	TEXT,
	`h_carbonate_eff`	TEXT,
	`h_bound_distinct`	TEXT,
	`h_bound_shape`	TEXT,
	`h_permeability`	TEXT,
	`h_notes`	TEXT,
	`h_ec`	TEXT,
	`h_salinity_depth`	TEXT,
	`h_dispersion`	TEXT
);
DROP TABLE IF EXISTS `FABRICS`;
CREATE TABLE IF NOT EXISTS `FABRICS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`fab_no`	INTEGER,
	`fab_type`	TEXT,
	`fab_abun`	TEXT
);
DROP TABLE IF EXISTS `EXOTICS`;
CREATE TABLE IF NOT EXISTS `EXOTICS` (
	`AGENCY_CODE`	TEXT,
	`PROJ_CODE`	TEXT,
	`S_ID`	TEXT,
	`O_ID`	TEXT,
	`EX_NO`	REAL,
	`EX_SPECIES_CODE`	TEXT,
	`EX_EXTENT`	REAL
);
DROP TABLE IF EXISTS `ELEM_GEOMORPHS`;
CREATE TABLE IF NOT EXISTS `ELEM_GEOMORPHS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`egm_no`	INTEGER,
	`egm_mode`	TEXT,
	`egm_agent`	TEXT
);
DROP TABLE IF EXISTS `DISTURBANCES`;
CREATE TABLE IF NOT EXISTS `DISTURBANCES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`dist_no`	REAL,
	`dist_type`	TEXT
);
DROP TABLE IF EXISTS `CourseFragCodes`;
CREATE TABLE IF NOT EXISTS `CourseFragCodes` (
	`code`	TEXT,
	`range`	TEXT,
	`val`	REAL
);
DROP TABLE IF EXISTS `CUTANS`;
CREATE TABLE IF NOT EXISTS `CUTANS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`cutan_no`	INTEGER,
	`cutan_type`	TEXT,
	`cutan_abun`	TEXT,
	`cutan_distinct`	TEXT
);
DROP TABLE IF EXISTS `CRACKS`;
CREATE TABLE IF NOT EXISTS `CRACKS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`crack_no`	INTEGER,
	`crack_width`	TEXT
);
DROP TABLE IF EXISTS `COLOURS`;
CREATE TABLE IF NOT EXISTS `COLOURS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`col_no`	REAL,
	`col_hue_val_chrom`	TEXT,
	`col_hue`	TEXT,
	`col_value`	REAL,
	`col_chroma`	REAL,
	`col_moisture_stat`	TEXT
);
DROP TABLE IF EXISTS `CODES`;
CREATE TABLE IF NOT EXISTS `CODES` (
	`AGENCY_CODE`	TEXT,
	`CODE_DOMAIN`	TEXT,
	`CODE_VALUE`	TEXT,
	`CODE_VALUE2`	TEXT,
	`CODE_VALUE3`	TEXT,
	`CODE_DESC`	TEXT,
	`CODE_TECH_REF`	TEXT,
	`CODE_AVG_NO_VALUE`	REAL,
	`CODE_LOW_NO_VALUE`	REAL,
	`CODE_HIGH_NO_VALUE`	REAL
);
DROP TABLE IF EXISTS `COARSE_FRAGS`;
CREATE TABLE IF NOT EXISTS `COARSE_FRAGS` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`cf_no`	INTEGER,
	`cf_abun`	TEXT,
	`cf_size`	TEXT,
	`cf_shape`	TEXT,
	`cf_lith`	TEXT,
	`cf_strength`	TEXT,
	`cf_distribution`	TEXT
);
DROP TABLE IF EXISTS `ARCHIVE_SAMPLES`;
CREATE TABLE IF NOT EXISTS `ARCHIVE_SAMPLES` (
	`agency_code`	TEXT,
	`proj_code`	TEXT,
	`s_id`	TEXT,
	`o_id`	TEXT,
	`h_no`	INTEGER,
	`samp_no`	INTEGER,
	`jar_no`	REAL,
	`samp_type`	TEXT,
	`location`	TEXT,
	`weight`	REAL,
	`>2mm`	INTEGER,
	`spec_id`	INTEGER,
	`subsample_date`	TEXT,
	`subsample_tray`	TEXT
);
DROP TABLE IF EXISTS `AGENCIES`;
CREATE TABLE IF NOT EXISTS `AGENCIES` (
	`STATE_CODE`	TEXT,
	`AGENCY_CODE`	TEXT,
	`AGENCY_NAME`	TEXT,
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
