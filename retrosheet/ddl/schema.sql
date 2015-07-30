-------------------------------------------------------------------------------
-- Cretate the events table
-------------------------------------------------------------------------------

drop table if exists events;
create table events (
    game_id char(12) not null,
    away_team_id char(3),
    inn_ct int,
    bat_home_id int,
    outs_ct int,
    balls_ct int,
    strikes_ct int,
    pitch_seq_tx varchar(40),
    away_score_ct int,
    home_score_ct int,
    bat_id char(8),
    bat_hand_cd char(1),
    resp_bat_id char(8),
    resp_bat_hand_cd char(1),
    pit_id char(8),
    pit_hand_cd char(1),
    resp_pit_id char(8),
    resp_pit_hand_cd char(1),
    pos2_fld_id char(8),
    pos3_fld_id char(8),
    pos4_fld_id char(8),
    pos5_fld_id char(8),
    pos6_fld_id char(8),
    pos7_fld_id char(8),
    pos8_fld_id char(8),
    pos9_fld_id char(8),
    base1_run_id varchar(8),
    base2_run_id varchar(8),
    base3_run_id varchar(8),
    event_tx varchar(100),
    leadoff_fl boolean,
    ph_fl boolean,
    bat_fld_cd int,
    bat_lineup_id int,
    event_cd int,
    bat_event_fl boolean,
    ab_fl boolean,
    h_cd int,
    sh_fl boolean,
    sf_fl boolean,
    event_outs_ct int,
    dp_fl boolean,
    tp_fl boolean,
    rbi_ct int,
    wp_fl boolean,
    pb_fl boolean,
    fld_cd int,
    battedball_cd char(1),
    bunt_fl boolean,
    foul_fl boolean,
    battedball_loc_tx varchar(5),
    err_ct int,
    err1_fld_cd int,
    err1_cd char(1),
    err2_fld_cd int,
    err2_cd char(1),
    err3_fld_cd int,
    err3_cd char(1),
    bat_dest_id int,
    run1_dest_id int,
    run2_dest_id int,
    run3_dest_id int,
    bat_play_tx varchar(8),
    run1_play_tx varchar(15),
    run2_play_tx varchar(15),
    run3_play_tx varchar(15),
    run1_sb_fl boolean,
    run2_sb_fl boolean,
    run3_sb_fl boolean,
    run1_cs_fl boolean,
    run2_cs_fl boolean,
    run3_cs_fl boolean,
    run1_pk_fl boolean,
    run2_pk_fl boolean,
    run3_pk_fl boolean,
    run1_resp_pit_id varchar(8),
    run2_resp_pit_id varchar(8),
    run3_resp_pit_id varchar(8),
    game_new_fl boolean,
    game_end_fl boolean,
    pr_run1_fl boolean,
    pr_run2_fl boolean,
    pr_run3_fl boolean,
    removed_for_pr_run1_id varchar(8),
    removed_for_pr_run2_id varchar(8),
    removed_for_pr_run3_id varchar(8),
    removed_for_ph_bat_id varchar(8),
    removed_for_ph_bat_fld_cd int,
    po1_fld_cd int,
    po2_fld_cd int,
    po3_fld_cd int,
    ass1_fld_cd int,
    ass2_fld_cd int,
    ass3_fld_cd int,
    ass4_fld_cd int,
    ass5_fld_cd int,
    event_id int,
    home_team_id char(3),
    bat_team_id char(3),
    fld_team_id char(3),
    bat_last_id int,
    inn_new_fl boolean,
    inn_end_fl boolean,
    start_bat_score_ct int,
    start_fld_score_ct int,
    inn_runs_ct int,
    game_pa_ct int,
    inn_pa_ct int,
    pa_new_fl boolean,
    pa_trunc_fl boolean,
    start_bases_cd int,
    end_bases_cd int,
    bat_start_fl boolean,
    resp_bat_start_fl boolean,
    bat_on_deck_id varchar(8),
    bat_in_hold_id varchar(8),
    pit_start_fl boolean,
    resp_pit_start_fl boolean,
    run1_fld_cd int,
    run1_lineup_cd int,
    run1_origin_event_id int,
    run2_fld_cd int,
    run2_lineup_cd int,
    run2_origin_event_id int,
    run3_fld_cd int,
    run3_lineup_cd int,
    run3_origin_event_id int,
    run1_resp_cat_id varchar(8),
    run2_resp_cat_id varchar(8),
    run3_resp_cat_id varchar(8),
    pa_ball_ct int,
    pa_called_ball_ct int,
    pa_intent_ball_ct int,
    pa_pitchout_ball_ct int,
    pa_hitbatter_ball_ct int,
    pa_other_ball_ct int,
    pa_strike_ct int,
    pa_called_strike_ct int,
    pa_swingmiss_strike_ct int,
    pa_foul_strike_ct int,
    pa_inplay_strike_ct int,
    pa_other_strike_ct int,
    event_runs_ct int,
    fld_id varchar(8),
    base2_force_fl boolean,
    base3_force_fl boolean,
    base4_force_fl boolean,
    bat_safe_err_fl boolean,
    bat_fate_id int,
    run1_fate_id int,
    run2_fate_id int,
    run3_fate_id int,
    fate_runs_ct int,
    ass6_fld_cd int,
    ass7_fld_cd int,
    ass8_fld_cd int,
    ass9_fld_cd int,
    ass10_fld_cd int
);

--------------------------------------------------------------------------------
-- Create the games table
--------------------------------------------------------------------------------

drop table if exists games;
create table games (
    game_id varchar(12),
    game_dt int,
    game_ct int,
    game_dy varchar(9),
    start_game_tm int,
    dh_fl varchar(1),
    daynight_park_cd varchar(1),
    away_team_id varchar(3),
    home_team_id varchar(3),
    park_id varchar(5),
    away_start_pit_id varchar(8),
    home_start_pit_id varchar(8),
    base4_ump_id varchar(8),
    base1_ump_id varchar(8),
    base2_ump_id varchar(8),
    base3_ump_id varchar(8),
    lf_ump_id varchar(8),
    rf_ump_id varchar(8),
    attend_park_ct int,
    scorer_record_id varchar(50),
    translator_record_id varchar(50),
    inputter_record_id varchar(50),
    input_record_ts varchar(18),
    edit_record_ts varchar(18),
    method_record_cd varchar(18),
    pitches_record_cd varchar(1),
    temp_park_ct int,
    wind_direction_park_cd int,
    wind_speed_park_ct int,
    field_park_cd int,
    precip_park_cd int,
    sky_park_cd int,
    minutes_game_ct int,
    inn_ct int,
    away_score_ct int,
    home_score_ct int,
    away_hits_ct int,
    home_hits_ct int,
    away_err_ct int,
    home_err_ct int,
    away_lob_ct int,
    home_lob_ct int,
    win_pit_id varchar(8),
    lose_pit_id varchar(8),
    save_pit_id varchar(8),
    gwrbi_bat_id varchar(8),
    away_lineup1_bat_id varchar(8),
    away_lineup1_fld_cd int,
    away_lineup2_bat_id varchar(8),
    away_lineup2_fld_cd int,
    away_lineup3_bat_id varchar(8),
    away_lineup3_fld_cd int,
    away_lineup4_bat_id varchar(8),
    away_lineup4_fld_cd int,
    away_lineup5_bat_id varchar(8),
    away_lineup5_fld_cd int,
    away_lineup6_bat_id varchar(8),
    away_lineup6_fld_cd int,
    away_lineup7_bat_id varchar(8),
    away_lineup7_fld_cd int,
    away_lineup8_bat_id varchar(8),
    away_lineup8_fld_cd int,
    away_lineup9_bat_id varchar(8),
    away_lineup9_fld_cd int,
    home_lineup1_bat_id varchar(8),
    home_lineup1_fld_cd int,
    home_lineup2_bat_id varchar(8),
    home_lineup2_fld_cd int,
    home_lineup3_bat_id varchar(8),
    home_lineup3_fld_cd int,
    home_lineup4_bat_id varchar(8),
    home_lineup4_fld_cd int,
    home_lineup5_bat_id varchar(8),
    home_lineup5_fld_cd int,
    home_lineup6_bat_id varchar(8),
    home_lineup6_fld_cd int,
    home_lineup7_bat_id varchar(8),
    home_lineup7_fld_cd int,
    home_lineup8_bat_id varchar(8),
    home_lineup8_fld_cd int,
    home_lineup9_bat_id varchar(8),
    home_lineup9_fld_cd int,
    away_finish_pit_id varchar(8),
    home_finish_pit_id varchar(8),
    away_team_league_id char(1),
    home_team_league_id char(1),
    away_team_game_ct int,
    home_team_game_ct int,
    outs_ct int,
    completion_tx text,
    forfeit_tx text,
    protest_tx text,
    away_line_tx text,
    home_line_tx text,
    away_ab_ct int,
    away_2b_ct int,
    away_3b_ct int,
    away_hr_ct int,
    away_bi_ct int,
    away_sh_ct int,
    away_sf_ct int,
    away_hp_ct int,
    away_bb_ct int,
    away_ibb_ct int,
    away_so_ct int,
    away_sb_ct int,
    away_cs_ct int,
    away_gdp_ct int,
    away_xi_ct int,
    away_pitcher_ct int,
    away_er_ct int,
    away_ter_ct int,
    away_wp_ct int,
    away_bk_ct int,
    away_po_ct int,
    away_a_ct int,
    away_pb_ct int,
    away_dp_ct int,
    away_tp_ct int,
    home_ab_ct int,
    home_2b_ct int,
    home_3b_ct int,
    home_hr_ct int,
    home_bi_ct int,
    home_sh_ct int,
    home_sf_ct int,
    home_hp_ct int,
    home_bb_ct int,
    home_ibb_ct int,
    home_so_ct int,
    home_sb_ct int,
    home_cs_ct int,
    home_gdp_ct int,
    home_xi_ct int,
    home_pitcher_ct int,
    home_er_ct int,
    home_ter_ct int,
    home_wp_ct int,
    home_bk_ct int,
    home_po_ct int,
    home_a_ct int,
    home_pb_ct int,
    home_dp_ct int,
    home_tp_ct int,
    ump_home_name_tx text,
    ump_1b_name_tx text,
    ump_2b_name_tx text,
    ump_3b_name_tx text,
    ump_lf_name_tx text,
    ump_rf_name_tx text,
    away_manager_id varchar(8),
    away_manager_name_tx text,
    home_manager_id varchar(8),
    home_manager_name_tx text,
    win_pit_name_tx text,
    lose_pit_name_tx text,
    save_pit_name_tx text,
    goahead_rbi_id varchar(8),
    goahead_rbi_name_tx text,
    away_lineup1_bat_name_tx text,
    away_lineup2_bat_name_tx text,
    away_lineup3_bat_name_tx text,
    away_lineup4_bat_name_tx text,
    away_lineup5_bat_name_tx text,
    away_lineup6_bat_name_tx text,
    away_lineup7_bat_name_tx text,
    away_lineup8_bat_name_tx text,
    away_lineup9_bat_name_tx text,
    home_lineup1_bat_name_tx text,
    home_lineup2_bat_name_tx text,
    home_lineup3_bat_name_tx text,
    home_lineup4_bat_name_tx text,
    home_lineup5_bat_name_tx text,
    home_lineup6_bat_name_tx text,
    home_lineup7_bat_name_tx text,
    home_lineup8_bat_name_tx text,
    home_lineup9_bat_name_tx text,
    add_info_tx text,
    acq_info_tx text
);

--------------------------------------------------------------------------------
-- Table structure for subs table
--------------------------------------------------------------------------------

drop table if exists subs;
create table subs (
    game_id varchar(12),
    inn_ct int,
    bat_home_id int,
    sub_id varchar(8),
    sub_home_id int,
    sub_lineup_id int,
    sub_fld_cd int,
    removed_id varchar(8),
    removed_fld_cd int,
    event_id int
);

-- ----------------------------------------------------------------------------
--  Table structure for players table
-- ----------------------------------------------------------------------------
drop table if exists players;
create table players (
    last text,
    first text,
    id char(8),
    debut date
);

-- ----------------------------------------------------------------------------
--  Table structure for parks table
-- ----------------------------------------------------------------------------
drop table if exists parks;
create table parks (
    park_id char(5),
    name text,
    state text,
    start date,
    end date,
    league char(2),
    notes text,
    aka text
);

-- -----------------------------------------------------------------------------
-- Table Structure for bases_cd table
--------------------------------------------------------------------------------
drop table if exists bases_cd;
create table bases_cd (
    start_bases_cd int,
    runner_1 int,
    runner_2 int,
    runner_3 int
);

insert into bases_cd (start_bases_cd, runner_1, runner_2, runner_3)
    values (0, 0, 0, 0), 
           (1, 1, 0, 0),
           (2, 0, 1, 0),
           (3, 1, 1, 0),
           (4, 0, 0, 1),
           (5, 1, 0, 1),
           (6, 0, 1, 1),
           (7, 1, 1, 1);

-- -----------------------------------------------------------------------------
--  Table structure for event_cd
-- -----------------------------------------------------------------------------
drop table if exists event_cd;
create table event_cd (
    value_cd int4 not null,
    shortname varchar(8),
    longname varchar(30)
);

insert into event_cd (value_cd, shortname, longname)
    values ('2', 'Out', 'Generic Out'),
           ('3', 'K', 'Strikeout'),
           ('4', 'SB', 'Stolen Base'),
           ('5', 'DI', 'Defensive Indifferen'),
           ('6', 'CS', 'Caught Stealing'),
           ('8', 'PK', 'Pickoff'),
           ('9', 'WP', 'Wild Pitch'),
           ('10', 'PB', 'Passed Ball'),
           ('11', 'BK', 'Balk'),
           ('12', 'OA', 'Other Advance'),
           ('13', 'FE', 'Foul Error'),
           ('14', 'NIBB', 'Nonintentional Walk'),
           ('15', 'IBB', 'Intentional Walk'),
           ('16', 'HBP', 'Hit By Pitch'),
           ('17', 'XI', 'Interference'),
           ('18', 'ROE', 'Error'),
           ('19', 'FC', 'Fielder Choice'),
           ('20', '1B', 'Single'),
           ('21', '2B', 'Double'),
           ('22', '3B', 'Triple'),
           ('23', 'HR', 'Homerun');
