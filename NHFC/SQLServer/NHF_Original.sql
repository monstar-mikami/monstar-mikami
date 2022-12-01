CREATE TABLE [dbo].[M_BIT](
	[bit_id] [int] NOT NULL,
	[dsp_type] [int] NULL,
	[bit_name] [varchar](20) NULL,
	[msb_position] [int] NULL,
	[msb_register_number_ram] [int] NULL,
	[lsb_position] [int] NULL,
	[lsb_register_number_ram] [int] NULL,
	[parts_number] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[bit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_CANDIDATE](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[earphone_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[display_value] [varchar](20) NULL,
	[display_value_en] [varchar](20) NULL,
	[candidate_value] [int] NULL,
	[default_type] [int] NULL,
	[limitation] [int] NULL,
	[resource_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[earphone_id] ASC,
	[candidate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_CAND_EXTEND](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[earphone_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[extend_id] [int] NOT NULL,
	[value_1] [int] NULL,
	[value_2] [int] NULL,
	[value_3] [int] NULL,
	[value_4] [int] NULL,
	[value_5] [int] NULL,
	[value_6] [int] NULL,
	[value_7] [int] NULL,
	[value_8] [int] NULL,
	[value_9] [int] NULL,
	[value_10] [int] NULL,
	[value_11] [int] NULL,
	[value_12] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[earphone_id] ASC,
	[candidate_id] ASC,
	[extend_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_CAND_LIMIT](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[earphone_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[limit_id] [int] NOT NULL,
	[target_trim_id] [int] NULL,
	[c_id_upper] [int] NULL,
	[c_id_lower] [int] NULL,
	[limitation] [int] NULL,
	[resource_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[earphone_id] ASC,
	[candidate_id] ASC,
	[limit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_CLIENT](
	[Client_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_No] [varchar](12) NULL,
	[Client_First_Name] [nvarchar](25) NOT NULL,
	[Client_Last_Name] [nvarchar](25) NOT NULL,
	[Client_First_Kana] [nvarchar](25) NOT NULL,
	[Client_Last_Kana] [nvarchar](25) NOT NULL,
	[Sex] [tinyint] NULL,
	[Birthday] [date] NULL,
	[Postal_Code] [nvarchar](7) NULL,
	[Prefecture] [tinyint] NULL,
	[City] [nvarchar](255) NULL,
	[Buiding_Name] [nvarchar](255) NULL,
	[Phone_Number1] [nvarchar](11) NULL,
	[Phone_Number2] [nvarchar](11) NULL,
	[Fax_Number] [nvarchar](11) NULL,
	[Mail_Address] [nvarchar](256) NULL,
	[Introduction_Id] [int] NULL,
	[Hobby_id1] [tinyint] NULL,
	[Hobby_text1] [nvarchar](100) NULL,
	[Hobby_id2] [tinyint] NULL,
	[Hobby_text2] [nvarchar](100) NULL,
	[Hobby_id3] [tinyint] NULL,
	[Hobby_text3] [nvarchar](100) NULL,
	[Occupation_id] [tinyint] NULL,
	[Notice_id] [tinyint] NULL,
	[Family_Kind] [tinyint] NULL,
	[Family_Number_People] [tinyint] NULL,
	[Other_Reasons] [nvarchar](50) NULL,
	[Disability_Grade] [tinyint] NULL,
	[Disability_Certificate] [date] NULL,
	[Family_Memo] [nvarchar](max) NULL,
	[Contact_Id] [int] NULL,
	[Usage_Type] [bit] NULL,
	[Keyword] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_CODE_DYNAMIC](
	[Code_id] [int] IDENTITY(1,1) NOT NULL,
	[Kbn1_Code] [tinyint] NULL,
	[Kbn1_Name] [varchar](max) NULL,
	[Kbn2_Code] [tinyint] NULL,
	[Kbn2_Name] [varchar](max) NULL,
	[Kbn3_Code] [tinyint] NULL,
	[Kbn3_Name] [varchar](max) NULL,
	[Code] [tinyint] NULL,
	[CodeValue] [varchar](max) NULL,
	[DefaultFlg] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_CODE_STATIC](
	[Code_id] [int] IDENTITY(1,1) NOT NULL,
	[Kbn1_Code] [tinyint] NULL,
	[Kbn1_Name] [varchar](max) NULL,
	[Code] [tinyint] NULL,
	[CodeValue] [varchar](max) NULL,
	[DefaultFlg] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_CONTACT](
	[Contact_id] [int] IDENTITY(1,1) NOT NULL,
	[Contact_No] [varchar](8) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Introduction_No] [varchar](8) NOT NULL,
	[Department] [nvarchar](max) NULL,
	[Manager_First_Name] [nvarchar](25) NOT NULL,
	[Manager_Last_Name] [nvarchar](25) NOT NULL,
	[Manager_First_Kana] [nvarchar](25) NOT NULL,
	[Manager_Last_Kana] [nvarchar](25) NOT NULL,
	[Phone_Number] [nvarchar](11) NULL,
	[Mail_Address] [nvarchar](256) NULL,
	[Usage_Type] [bit] NULL,
	[Memo] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_EARPHONE](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[earphone_id] [int] NOT NULL,
	[earphone_name] [varchar](10) NULL,
	[earphone_value] [int] NULL,
	[earphone_size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[earphone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_GRAPH_REVISE](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[revise_id] [int] NOT NULL,
	[scale_1] [int] NULL,
	[scale_2] [int] NULL,
	[scale_3] [int] NULL,
	[scale_4] [int] NULL,
	[scale_5] [int] NULL,
	[scale_6] [int] NULL,
	[scale_7] [int] NULL,
	[scale_8] [int] NULL,
	[scale_9] [int] NULL,
	[scale_10] [int] NULL,
	[scale_11] [int] NULL,
	[scale_12] [int] NULL,
	[scale_13] [int] NULL,
	[scale_14] [int] NULL,
	[scale_15] [int] NULL,
	[scale_16] [int] NULL,
	[scale_17] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[revise_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_INTRODUCTION](
	[Introduction_id] [int] IDENTITY(1,1) NOT NULL,
	[Introduction_No] [varchar](8) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Introduction_Kind] [tinyint] NOT NULL,
	[Introduction_Name] [nvarchar](100) NOT NULL,
	[Introduction_Kana] [nvarchar](200) NOT NULL,
	[Postal_Code] [nvarchar](7) NULL,
	[Prefecture] [tinyint] NULL,
	[City] [nvarchar](255) NULL,
	[Buiding_Name] [nvarchar](255) NULL,
	[Phone_Number] [nvarchar](11) NULL,
	[Fax_Number] [nvarchar](11) NULL,
	[Mail_Address] [nvarchar](256) NULL,
	[Usage_Type] [bit] NULL,
	[Memo] [nvarchar](max) NULL,
	[Keyword] [ntext] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Introduction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_MAKER](
	[maker_id] [int] NOT NULL,
	[maker_name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_MODEL_TYPE](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[dsp_type] [int] NULL,
	[series_name] [varchar](20) NULL,
	[series_name_en] [varchar](20) NULL,
	[library_id] [int] NULL,
	[model_type_name] [varchar](20) NULL,
	[ear_type] [int] NULL,
	[ear_type2] [int] NULL,
	[linear_type] [int] NULL,
	[welfare] [int] NULL,
	[present_model] [int] NULL,
	[calculation_type] [int] NULL,
	[hearing_sligth] [int] NULL,
	[hearing_medium] [int] NULL,
	[hearing_heigth] [int] NULL,
	[hearing_heavily] [int] NULL,
	[battery_name] [varchar](10) NULL,
	[battery_name_en] [varchar](10) NULL,
	[output_limit] [varchar](10) NULL,
	[output_limit_en] [varchar](10) NULL,
	[tone_tune] [varchar](10) NULL,
	[tone_tune_en] [varchar](10) NULL,
	[coil_tune] [varchar](10) NULL,
	[price] [int] NULL,
	[mic_position] [int] NULL,
	[memory_count] [int] NULL,
	[wide_limit_upper] [varchar](20) NULL,
	[wide_limit_lower] [varchar](20) NULL,
	[narrow_limit_upper] [varchar](20) NULL,
	[narrow_limit_lower] [varchar](20) NULL,
	[open_type] [int] NULL,
	[connector] [int] NULL,
	[tab] [int] NULL,
	[status] [int] NULL,
	[programmable] [int] NULL,
	[programmable_id] [int] NULL,
	[programmable_id2] [int] NULL,
	[manufacturer_id] [int] NULL,
	[tab_type] [int] NULL,
	[initial_tab] [int] NULL,
	[prescript] [int] NULL,
	[graph] [int] NULL,
	[target_characteristic] [int] NULL,
	[menu_edit] [int] NULL,
	[menu_measure] [int] NULL,
	[menu_comm] [int] NULL,
	[function_presence] [int] NULL,
	[function_init_state] [int] NULL,
	[dial_number] [int] NULL,
	[digital_250_level] [int] NULL,
	[sonic_device_id] [int] NULL,
	[default_sw_vr] [int] NULL,
	[default_mic] [int] NULL,
	[mic_data_type] [int] NULL,
	[connect_battery] [int] NULL,
	[def_prescript] [int] NULL,
	[release_date] [varchar](8) NULL,
	[comment1] [varchar](50) NULL,
	[comment1_en] [varchar](max) NULL,
	[spec_summary] [varchar](max) NULL,
	[image_data] [varbinary](max) NULL,
	[image_logo] [varbinary](max) NULL,
	[master_no] [int] NULL,
	[hl_prescript] [int] NULL,
	[waterproof] [int] NULL,
	[irreparable_time] [varchar](8) NULL,
	[cartilage] [int] NULL,
	[test_device_type] [int] NULL,
	[test_device_name] [varchar](20) NULL,
	[test_device_Prefix] [varchar](10) NULL,
	[test_device_pid2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[model_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_MODEL_TYPE_DATA](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[earphone_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[model_type_data_id] [int] NOT NULL,
	[bit_id] [int] NOT NULL,
	[code_name] [varchar](20) NULL,
	[code_value] [int] NULL,
	[reflection] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[earphone_id] ASC,
	[candidate_id] ASC,
	[model_type_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_MODEL_TYPE_EXTEND](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[extend_id] [int] NOT NULL,
	[extend_type] [int] NULL,
	[function_type] [int] NULL,
	[disp_graph] [int] NULL,
	[value_1] [int] NULL,
	[value_2] [int] NULL,
	[value_3] [int] NULL,
	[value_4] [int] NULL,
	[value_5] [int] NULL,
	[value_6] [int] NULL,
	[value_7] [int] NULL,
	[value_8] [int] NULL,
	[value_9] [int] NULL,
	[value_10] [int] NULL,
	[value_11] [int] NULL,
	[value_12] [int] NULL,
	[string_1] [varchar](20) NULL,
	[string_2] [varchar](20) NULL,
	[string_3] [varchar](20) NULL,
	[string_4] [varchar](20) NULL,
	[string_5] [varchar](20) NULL,
	[string_6] [varchar](20) NULL,
	[date_1] [datetime] NULL,
	[date_2] [datetime] NULL,
	[memo_1] [varchar](max) NULL,
	[memo_2] [varchar](max) NULL,
	[binary_1] [varbinary](max) NULL,
	[binary_2] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[extend_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_REGISTER](
	[register_id] [int] NOT NULL,
	[dsp_type] [int] NOT NULL,
	[register_number_ram] [int] NULL,
	[register_number_mem1] [int] NULL,
	[register_number_mem2] [int] NULL,
	[register_number_mem3] [int] NULL,
	[register_number_mem4] [int] NULL,
	[address_ram] [varchar](4) NULL,
	[address_mem1] [varchar](4) NULL,
	[address_mem2] [varchar](4) NULL,
	[address_mem3] [varchar](4) NULL,
	[address_mem4] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[register_id] ASC,
	[dsp_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_SCALE](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[scale_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[ext_val] [int] NULL,
	[scale_1] [int] NULL,
	[scale_2] [int] NULL,
	[scale_3] [int] NULL,
	[scale_4] [int] NULL,
	[scale_5] [int] NULL,
	[scale_6] [int] NULL,
	[scale_7] [int] NULL,
	[scale_8] [int] NULL,
	[scale_9] [int] NULL,
	[scale_10] [int] NULL,
	[scale_11] [int] NULL,
	[scale_12] [int] NULL,
	[scale_13] [int] NULL,
	[scale_14] [int] NULL,
	[scale_15] [int] NULL,
	[scale_16] [int] NULL,
	[scale_17] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[scale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_SCALE2](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[scale_id] [int] NOT NULL,
	[candidate_id] [int] NOT NULL,
	[item_id] [int] NOT NULL,
	[ext_val] [int] NULL,
	[scale_1] [int] NULL,
	[scale_2] [int] NULL,
	[scale_3] [int] NULL,
	[scale_4] [int] NULL,
	[scale_5] [int] NULL,
	[scale_6] [int] NULL,
	[scale_7] [int] NULL,
	[scale_8] [int] NULL,
	[scale_9] [int] NULL,
	[scale_10] [int] NULL,
	[scale_11] [int] NULL,
	[scale_12] [int] NULL,
	[scale_13] [int] NULL,
	[scale_14] [int] NULL,
	[scale_15] [int] NULL,
	[scale_16] [int] NULL,
	[scale_17] [int] NULL,
	[scale_18] [int] NULL,
	[scale_19] [int] NULL,
	[scale_20] [int] NULL,
	[scale_21] [int] NULL,
	[scale_22] [int] NULL,
	[scale_23] [int] NULL,
	[scale_24] [int] NULL,
	[scale_25] [int] NULL,
	[scale_26] [int] NULL,
	[scale_27] [int] NULL,
	[scale_28] [int] NULL,
	[scale_29] [int] NULL,
	[scale_30] [int] NULL,
	[scale_31] [int] NULL,
	[scale_32] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC,
	[scale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_STAFF](
	[Staff_id] [int] IDENTITY(1,1) NOT NULL,
	[User_id] [varchar](255) NOT NULL,
	[First_Name] [nvarchar](255) NOT NULL,
	[Last_Name] [nvarchar](255) NOT NULL,
	[First_Name_Kana] [nvarchar](255) NOT NULL,
	[Last_Name_Kana] [nvarchar](255) NOT NULL,
	[Mail_Address] [nvarchar](255) NOT NULL,
	[User_Type] [int] NULL,
	[Usage_Type] [int] NULL,
	[Is_Fitter] [bit] NULL,
	[Hearing_Aid_Technician] [int] NULL,
	[Password] [varchar](255) NOT NULL,
	[Is_Temp_Pwd] [bit] NOT NULL,
	[Delete_Flg] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[M_STAFF] ADD  DEFAULT ((0)) FOR [Delete_Flg]
GO
CREATE TABLE [dbo].[M_STAFF_CLIENT](
	[Staff_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC,
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_STD_DATA](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[std_data_id] [int] NOT NULL,
	[item_number] [int] NULL,
	[data_1] [int] NULL,
	[data_2] [int] NULL,
	[data_3] [int] NULL,
	[data_4] [int] NULL,
	[data_5] [int] NULL,
	[data_6] [int] NULL,
	[data_7] [int] NULL,
	[data_8] [int] NULL,
	[data_9] [int] NULL,
	[data_10] [int] NULL,
	[data_11] [int] NULL,
	[data_12] [int] NULL,
	[data_13] [int] NULL,
	[data_14] [int] NULL,
	[data_15] [int] NULL,
	[data_16] [int] NULL,
	[data_17] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[std_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_STD_DATA2](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[std_data_id] [int] NOT NULL,
	[item_number] [int] NULL,
	[data_1] [int] NULL,
	[data_2] [int] NULL,
	[data_3] [int] NULL,
	[data_4] [int] NULL,
	[data_5] [int] NULL,
	[data_6] [int] NULL,
	[data_7] [int] NULL,
	[data_8] [int] NULL,
	[data_9] [int] NULL,
	[data_10] [int] NULL,
	[data_11] [int] NULL,
	[data_12] [int] NULL,
	[data_13] [int] NULL,
	[data_14] [int] NULL,
	[data_15] [int] NULL,
	[data_16] [int] NULL,
	[data_17] [int] NULL,
	[data_18] [int] NULL,
	[data_19] [int] NULL,
	[data_20] [int] NULL,
	[data_21] [int] NULL,
	[data_22] [int] NULL,
	[data_23] [int] NULL,
	[data_24] [int] NULL,
	[data_25] [int] NULL,
	[data_26] [int] NULL,
	[data_27] [int] NULL,
	[data_28] [int] NULL,
	[data_29] [int] NULL,
	[data_30] [int] NULL,
	[data_31] [int] NULL,
	[data_32] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[std_data_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_STORE](
	[Store_id] [int] IDENTITY(1,1) NOT NULL,
	[Shop_Code] [varchar](10) NULL,
	[Shop_Name] [nvarchar](40) NULL,
	[Sub_Name] [varchar](5) NULL,
	[Postal_Code] [varchar](10) NULL,
	[Prefecture] [tinyint] NULL,
	[City] [varchar](40) NULL,
	[Buiding_Name] [varchar](40) NULL,
	[Phone_Number] [varchar](11) NULL,
	[Fax_Number] [varchar](11) NULL,
	[Usage_Type] [int] NULL,
	[Keyword] [ntext] NULL,
	[Hearing_Aid_Handling] [bit] NULL,
	[Hochoki_Purchase_Support] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_STORE_CLIENT](
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[M_STORE_STAFF](
	[Store_id] [int] NOT NULL,
	[Staff_id] [int] NOT NULL,
	[Is_First_Store] [bit] NOT NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[M_TRIM](
	[maker_id] [int] NOT NULL,
	[model_type_id] [int] NOT NULL,
	[trim_id] [int] NOT NULL,
	[trim_name] [varchar](20) NULL,
	[disp_name] [varchar](20) NULL,
	[disp_name_en] [varchar](20) NULL,
	[attribute] [int] NULL,
	[disp_graph] [int] NULL,
	[disp_disable] [int] NULL,
	[page] [int] NULL,
	[disp_position] [int] NULL,
	[type] [int] NULL,
	[color] [int] NULL,
	[reverse] [int] NULL,
	[simple_page] [int] NULL,
	[simple_position] [int] NULL,
	[scale] [varchar](10) NULL,
	[scale_en] [varchar](10) NULL,
	[auto_adjust] [int] NULL,
	[both_ear] [int] NULL,
	[usage_type] [int] NULL,
	[sound_change] [int] NULL,
	[item_number] [int] NULL,
	[limitation] [int] NULL,
	[common_trim] [int] NULL,
	[step] [int] NULL,
	[plus_1] [int] NULL,
	[plus_3] [int] NULL,
	[plus_max] [int] NULL,
	[minus_1] [int] NULL,
	[minus_3] [int] NULL,
	[minus_max] [int] NULL,
	[re_setting] [int] NULL,
	[connect_disable] [int] NULL,
	[function_usage] [int] NULL,
	[meas_max] [int] NULL,
	[meas_fit] [int] NULL,
	[flag_1] [int] NULL,
	[flag_2] [int] NULL,
	[disp_b_page] [int] NULL,
	[disp_b_position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maker_id] ASC,
	[model_type_id] ASC,
	[trim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_AUDIOGRAM](
	[Audiogram_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Karte_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Data] [image] NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_EARMOLDS](
	[Earmolds_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Karte_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Earmolds_Staff_id] [int] NOT NULL,
	[Earmolds_Memo] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Karte_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_EFFECTIVENESS_MEASUREMENT](
	[Effectiveness_Measurement_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [datetime] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Karte_id] [int] NULL,
	[Hearing_Instruments_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_HEARING_AID_MEASUREMENT](
	[Hearing_Aid_Measurement_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [tinyint] NOT NULL,
	[Graph_No] [tinyint] NOT NULL,
	[Karte_id] [int] NULL,
	[Hearing_Instruments_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Method] [varchar](20) NULL,
	[Input_Destination] [varchar](20) NULL,
	[Input_Level] [varchar](20) NULL,
	[Input_Frequency] [varchar](20) NULL,
	[Display_Flag] [bit] NULL,
	[Graph_Color] [int] NULL,
	[Measurement_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC,
	[Graph_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_HEARING_INSTRUMENTS](
	[Hearing_Instruments_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Karte_id] [int] NULL,
	[Audiogram_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Data] [image] NULL,
	[Prescript_Kind] [varchar](20) NULL,
	[Prescript_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Image_Path] [nvarchar](256) NULL,
	[Comment] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_INSPECTION](
	[Inspection_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Karte_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Inspection_Staff_id] [int] NULL,
	[Scheduled_Date] [date] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Inspection_Kind] [varchar](20) NULL,
	[Inspection_Memo] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Karte_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_KARTE](
	[Karte_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Support_Staff_id] [int] NOT NULL,
	[Support_Place] [tinyint] NOT NULL,
	[Support_Place_Sub] [tinyint] NOT NULL,
	[Support_Place_Text] [nvarchar](256) NULL,
	[Purpose] [nvarchar](max) NULL,
	[Support_Memo] [nvarchar](max) NULL,
	[Printing_Memo] [nvarchar](max) NULL,
	[Hearing_Instruments_Flag] [bit] NULL,
	[Hearing_Aid_Measurement_Flag] [bit] NULL,
	[Effectiveness_Measurement_Flag] [bit] NULL,
	[Audiogram_Flag] [bit] NULL,
	[Sale_Flag] [bit] NULL,
	[Refund_Flag] [bit] NULL,
	[Rental_Flag] [bit] NULL,
	[Return_Flag] [bit] NULL,
	[Repair_Request_Flag] [bit] NULL,
	[Repair_Complete_Flag] [bit] NULL,
	[Inspection_Flag] [bit] NULL,
	[Earmolds_Flag] [bit] NULL,
	[Enquete_Flag] [bit] NULL,
	[Del_Flag] [bit] NULL,
	[Keyword] [nvarchar](max) NULL,
	[Easy_Adjustment_Compatible_Models] [bit] NULL,
	[Easy_Adjustment_Type] [bit] NULL,
	[Easy_Adjustment_Flag] [bit] NULL,
	[Number_Of_End_Steps] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_PACKAGE](
	[Package_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Package_Name] [nvarchar](50) NULL,
	[Default_Flag] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Package_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_PATTERN](
	[Pattern_id] [int] IDENTITY(1,1) NOT NULL,
	[Package_id] [int] NOT NULL,
	[Store_id] [int] NOT NULL,
	[Graph_No] [tinyint] NOT NULL,
	[Graph_Color] [nvarchar](50) NULL,
	[Measurement_Method] [nvarchar](50) NULL,
	[Input_Destination] [nvarchar](50) NULL,
	[Input_Level] [nvarchar](50) NULL,
	[Input_Frequency] [nvarchar](50) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Package_id] ASC,
	[Store_id] ASC,
	[Graph_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_RENTAL](
	[Rental_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Karte_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Rental_Staff_id] [int] NULL,
	[Rental_Kind] [tinyint] NULL,
	[Scheduled_Date] [date] NULL,
	[Item_Code] [varchar](8) NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Outer_Flag] [bit] NULL,
	[Motion_Flag] [bit] NULL,
	[Accessories_Flag] [bit] NULL,
	[Rental_Confirmation_Flag] [bit] NULL,
	[Rental_Memo] [nvarchar](max) NULL,
	[Return_Date] [date] NULL,
	[Return_Staff_id] [int] NULL,
	[Rental_Correspondence] [nvarchar](max) NULL,
	[Scratch_Flag] [bit] NULL,
	[Dirt_Flag] [bit] NULL,
	[Corruption_Flag] [bit] NULL,
	[Return_Confirmation_Flag] [bit] NULL,
	[Return_Memo] [nvarchar](max) NULL,
	[Return_Flag] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Karte_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_REPAIR](
	[Repair_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Karte_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Reception_Staff_id] [int] NULL,
	[Item_Code] [varchar](8) NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Repair_Location] [tinyint] NULL,
	[Repair_Memo] [nvarchar](max) NULL,
	[Delivery_Date] [date] NULL,
	[Repair_Staff] [int] NULL,
	[Delivery_Staff_id] [int] NULL,
	[Repair_Price] [numeric](8, 0) NULL,
	[Repair_Kind] [nvarchar](max) NULL,
	[Delivery_Memo] [nvarchar](max) NULL,
	[Delivery_Flag] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Karte_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_SALES](
	[Sales_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Karte_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Sales_Staff_id] [int] NULL,
	[Item_Code] [varchar](8) NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Price] [numeric](8, 0) NULL,
	[Outer_Flag] [bit] NULL,
	[Motion_Flag] [bit] NULL,
	[Accessories_Flag] [bit] NULL,
	[Confirmation_Flag] [bit] NULL,
	[Sales_Memo] [nvarchar](max) NULL,
	[Return_Flag] [bit] NULL,
	[Return_Date] [date] NULL,
	[Return_Staff_id] [int] NULL,
	[Reason_For_Return] [nvarchar](max) NULL,
	[Return_Memo] [nvarchar](max) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Karte_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_SETTINGS_BASIC](
	[Staff_id] [int] NOT NULL,
	[User_id] [varchar](255) NULL,
	[Binaural_Correction] [bit] NULL,
	[Variable_Volume_Range] [bit] NULL,
	[Crossover_Frequency] [bit] NULL,
	[Mode_Setting_To_Available_Memory] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_SETTINGS_DEFAULT_VALUE_CUSTOMIZATION](
	[Staff_id] [int] NOT NULL,
	[User_id] [varchar](255) NULL,
	[Series] [tinyint] NOT NULL,
	[Title_Division] [tinyint] NOT NULL,
	[Item] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC,
	[Series] ASC,
	[Title_Division] ASC,
	[Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_SETTINGS_GRAPH](
	[Staff_id] [int] NOT NULL,
	[User_id] [varchar](255) NULL,
	[Graph_Type] [tinyint] NOT NULL,
	[Kind] [tinyint] NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Selection_State] [bit] NULL,
	[Line_Type] [nvarchar](100) NULL,
	[Border_Color] [nvarchar](100) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC,
	[Graph_Type] ASC,
	[Kind] ASC,
	[Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_SETTINGS_PRESCRIPTION_FORMULA](
	[Staff_id] [int] NOT NULL,
	[User_id] [varchar](255) NULL,
	[Age] [tinyint] NOT NULL,
	[Prescription_Formula] [nvarchar](100) NULL,
	[Correction] [nvarchar](100) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC,
	[Age] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_SOUND_SETTINGS](
	[Staff_id] [int] NOT NULL,
	[Acoustic_Type] [tinyint] NOT NULL,
	[Title_Division] [tinyint] NOT NULL,
	[Title_Name] [nvarchar](100) NULL,
	[Type_Name] [nvarchar](50) NOT NULL,
	[Sound_Settings] [bit] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Staff_id] ASC,
	[Acoustic_Type] ASC,
	[Title_Division] ASC,
	[Type_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[T_TERMINAL_INFORMATION](
	[Terminal_id] [int] IDENTITY(1,1) NOT NULL,
	[Operation_Mode] [tinyint] NULL,
	[Data_Migration_Method] [tinyint] NULL,
	[Data_Migration_Implementation] [bit] NULL,
	[UserId_StoreCode_Record] [bit] NULL,
	[Server_Name] [nvarchar](100) NULL,
	[CloudData_Migration] [bit] NULL,
	[Interface] [nvarchar](100) NULL,
	[HearingAid_InterfacePort] [nvarchar](100) NULL,
	[Selector_CommunicationInterface] [bit] NULL,
	[Property_TestEquipment] [nvarchar](100) NULL,
	[TestEquipment_Port] [nvarchar](100) NULL,
	[Coupler] [nvarchar](100) NULL,
	[Signal] [nvarchar](100) NULL,
	[FindAndViewPorts] [bit] NULL,
	[Characteristic_Measurement] [bit] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Audiometer] [nvarchar](100) NULL,
	[Audiometer_Port] [nvarchar](100) NULL,
	[Communication_Speed] [smallint] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Terminal_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
CREATE TABLE [dbo].[W_EFFECTIVENESS_MEASUREMENT_WORK](
	[Effectiveness_Measurement_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [datetime] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Karte_id] [int] NULL,
	[Hearing_Instruments_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Hearing_Aid_id] [int] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[W_HEARING_AID](
	[Hearing_Aid_id] [int] IDENTITY(1,1) NOT NULL,
	[Client_id] [int] NOT NULL,
	[Ear_Kind] [tinyint] NOT NULL,
	[Sort_No] [int] NULL,
	[Product_No] [varchar](20) NOT NULL,
	[Serial_No] [varchar](20) NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Client_id] ASC,
	[Ear_Kind] ASC,
	[Product_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[W_HEARING_AID_MEASUREMENT_WORK](
	[Hearing_Aid_Measurement_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [tinyint] NOT NULL,
	[Graph_No] [tinyint] NOT NULL,
	[Karte_id] [int] NULL,
	[Hearing_Instruments_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Method] [varchar](20) NULL,
	[Input_Destination] [varchar](20) NULL,
	[Input_Level] [varchar](20) NULL,
	[Input_Frequency] [varchar](20) NULL,
	[Display_Flag] [bit] NULL,
	[Graph_Color] [int] NULL,
	[Measurement_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Hearing_Aid_id] [int] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC,
	[Graph_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE TABLE [dbo].[W_HEARNG_INSTRUMENTS_WORK](
	[Hearing_Instruments_id] [int] IDENTITY(1,1) NOT NULL,
	[Store_id] [int] NOT NULL,
	[Client_id] [int] NOT NULL,
	[Implementation_Date] [date] NOT NULL,
	[Seq_No] [int] NOT NULL,
	[Ear_Kind] [int] NOT NULL,
	[Karte_id] [int] NULL,
	[Audiogram_id] [int] NULL,
	[Product_No] [varchar](20) NULL,
	[Serial_No] [varchar](20) NULL,
	[Measurement_Data] [image] NULL,
	[Prescript_Kind] [varchar](20) NULL,
	[Prescript_Data] [varbinary](max) NULL,
	[Measurement_Memo] [nvarchar](max) NULL,
	[Measurement_Date] [datetime] NULL,
	[Image_Path] [nvarchar](256) NULL,
	[Comment] [nvarchar](max) NULL,
	[Hearing_Aid_id] [int] NULL,
	[Created_By] [int] NULL,
	[Create_Date] [datetime] NULL,
	[Update_By] [int] NULL,
	[Update_Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_id] ASC,
	[Client_id] ASC,
	[Implementation_Date] ASC,
	[Seq_No] ASC,
	[Ear_Kind] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
