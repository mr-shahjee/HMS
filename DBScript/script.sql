
/****** Object:  Database [LoginDB]    Script Date: 5/26/2023 6:04:48 PM ******/
CREATE DATABASE [LoginDB] 
GO
USE [LoginDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyDetails]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyDetails](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Owner] [nvarchar](50) NULL,
	[PublishYear] [int] NULL,
 CONSTRAINT [PK_CompanyDetails] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gad7s]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gad7s](
	[Gad7Id] [int] IDENTITY(1,1) NOT NULL,
	[Gad7Date] [datetime2](7) NOT NULL,
	[TreatmentStage] [nvarchar](max) NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_gad7s] PRIMARY KEY CLUSTERED 
(
	[Gad7Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Condition] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schemas]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schemas](
	[schemaId] [int] IDENTITY(1,1) NOT NULL,
	[jsonSchema] [nvarchar](max) NULL,
	[schemaName] [nvarchar](max) NULL,
 CONSTRAINT [PK_schemas] PRIMARY KEY CLUSTERED 
(
	[schemaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Pwd] [nvarchar](max) NULL,
	[MemberSince] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220607104047_InitialCreate', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220609094127_InitialProduct', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220811110622_InitialMigrations', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220812103955_initialMigrations2', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220912122613_GAD7Initial', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921055246_InitialCreates', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921055316_Gad7Migrations', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921055644_Gad7Migration', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220921070315_InitialMigrations3', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[gad7s] ON 

INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (1, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Start', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (2, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (3, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (4, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Review', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (5, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (6, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (7, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Review', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (8, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (9, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (10, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Start', 0)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (11, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Review', 2)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (12, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Start', 9)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (13, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 12)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (14, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 13)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (15, CAST(N'2022-09-19T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 5)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (16, CAST(N'2022-09-20T19:00:00.0000000' AS DateTime2), N'Review', 10)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (17, CAST(N'2022-09-21T19:00:00.0000000' AS DateTime2), N'Treatment Start', 12)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (18, CAST(N'2022-09-22T19:00:00.0000000' AS DateTime2), N'Review', 10)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (19, CAST(N'2022-09-22T19:00:00.0000000' AS DateTime2), N'Treatment Exit', 5)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (20, CAST(N'2022-09-22T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 7)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (21, CAST(N'2022-09-22T19:00:00.0000000' AS DateTime2), N'Treatment Start', 8)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (22, CAST(N'2022-09-27T19:00:00.0000000' AS DateTime2), N'Review', 10)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (23, CAST(N'2022-09-28T19:00:00.0000000' AS DateTime2), N'Post-Treatment Exit', 10)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (24, CAST(N'2022-10-04T19:00:00.0000000' AS DateTime2), N'Review', 12)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (1002, CAST(N'2022-11-17T19:00:00.0000000' AS DateTime2), N'Treatment Start', 11)
INSERT [dbo].[gad7s] ([Gad7Id], [Gad7Date], [TreatmentStage], [Score]) VALUES (2002, CAST(N'2022-12-26T19:00:00.0000000' AS DateTime2), N'Treatment Start', 13)
SET IDENTITY_INSERT [dbo].[gad7s] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([ProductId], [ProductName], [Category], [Condition], [Price], [Comment], [Date]) VALUES (47, N'key', N'Electronics', N'Second Hand', 111, N'asd fasd asd', CAST(N'2022-06-01T19:00:00.0000000' AS DateTime2))
INSERT [dbo].[products] ([ProductId], [ProductName], [Category], [Condition], [Price], [Comment], [Date]) VALUES (50, N'aaaa', N'Furniture', N'Brand New', 123, N'aaadsdasadsdsdasdas', CAST(N'2022-09-11T19:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[schemas] ON 

INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1006, N'{
    "components": [
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "e10xdtq"
        }
    ]
}', N'firstSchema')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1008, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "e76bsyp"
        },
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField1",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "ea2i2vg"
        }
    ]
}', N'secondSchema')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1010, N'{
    "components": [
        {
            "label": "Columns",
            "columns": [
                {
                    "components": [
                        {
                            "label": "First Name",
                            "labelPosition": "top",
                            "placeholder": "",
                            "description": "",
                            "tooltip": "",
                            "prefix": "",
                            "suffix": "",
                            "widget": {
                                "type": "input"
                            },
                            "inputMask": "",
                            "displayMask": "",
                            "allowMultipleMasks": false,
                            "customClass": "",
                            "tabindex": "",
                            "autocomplete": "",
                            "hidden": false,
                            "hideLabel": false,
                            "showWordCount": false,
                            "showCharCount": false,
                            "mask": false,
                            "autofocus": false,
                            "spellcheck": true,
                            "disabled": false,
                            "tableView": true,
                            "modalEdit": false,
                            "multiple": false,
                            "defaultValue": null,
                            "persistent": true,
                            "inputFormat": "plain",
                            "protected": false,
                            "dbIndex": false,
                            "case": "",
                            "truncateMultipleSpaces": false,
                            "encrypted": false,
                            "redrawOn": "",
                            "clearOnHide": true,
                            "customDefaultValue": "",
                            "calculateValue": "",
                            "calculateServer": false,
                            "allowCalculateOverride": false,
                            "validateOn": "change",
                            "validate": {
                                "required": false,
                                "pattern": "",
                                "customMessage": "",
                                "custom": "",
                                "customPrivate": false,
                                "json": "",
                                "minLength": "",
                                "maxLength": "",
                                "strictDateValidation": false,
                                "multiple": false,
                                "unique": false
                            },
                            "unique": false,
                            "errorLabel": "",
                            "errors": "",
                            "key": "textField",
                            "tags": [],
                            "properties": {},
                            "conditional": {
                                "show": null,
                                "when": null,
                                "eq": "",
                                "json": ""
                            },
                            "customConditional": "",
                            "logic": [],
                            "attributes": {},
                            "overlay": {
                                "style": "",
                                "page": "",
                                "left": "",
                                "top": "",
                                "width": "",
                                "height": ""
                            },
                            "type": "textfield",
                            "input": true,
                            "refreshOn": "",
                            "dataGridLabel": false,
                            "addons": [],
                            "inputType": "text",
                            "id": "ene29yc"
                        }
                    ],
                    "width": 6,
                    "offset": 0,
                    "push": 0,
                    "pull": 0,
                    "size": "md",
                    "currentWidth": 6
                },
                {
                    "components": [
                        {
                            "label": "Last Name",
                            "labelPosition": "top",
                            "placeholder": "",
                            "description": "",
                            "tooltip": "",
                            "prefix": "",
                            "suffix": "",
                            "widget": {
                                "type": "input"
                            },
                            "inputMask": "",
                            "displayMask": "",
                            "allowMultipleMasks": false,
                            "customClass": "",
                            "tabindex": "",
                            "autocomplete": "",
                            "hidden": false,
                            "hideLabel": false,
                            "showWordCount": false,
                            "showCharCount": false,
                            "mask": false,
                            "autofocus": false,
                            "spellcheck": true,
                            "disabled": false,
                            "tableView": true,
                            "modalEdit": false,
                            "multiple": false,
                            "defaultValue": null,
                            "persistent": true,
                            "inputFormat": "plain",
                            "protected": false,
                            "dbIndex": false,
                            "case": "",
                            "truncateMultipleSpaces": false,
                            "encrypted": false,
                            "redrawOn": "",
                            "clearOnHide": true,
                            "customDefaultValue": "",
                            "calculateValue": "",
                            "calculateServer": false,
                            "allowCalculateOverride": false,
                            "validateOn": "change",
                            "validate": {
                                "required": false,
                                "pattern": "",
                                "customMessage": "",
                                "custom": "",
                                "customPrivate": false,
                                "json": "",
                                "minLength": "",
                                "maxLength": "",
                                "strictDateValidation": false,
                                "multiple": false,
                                "unique": false
                            },
                            "unique": false,
                            "errorLabel": "",
                            "errors": "",
                            "key": "textField1",
                            "tags": [],
                            "properties": {},
                            "conditional": {
                                "show": null,
                                "when": null,
                                "eq": "",
                                "json": ""
                            },
                            "customConditional": "",
                            "logic": [],
                            "attributes": {},
                            "overlay": {
                                "style": "",
                                "page": "",
                                "left": "",
                                "top": "",
                                "width": "",
                                "height": ""
                            },
                            "type": "textfield",
                            "input": true,
                            "refreshOn": "",
                            "dataGridLabel": false,
                            "addons": [],
                            "inputType": "text",
                            "id": "eb5q909"
                        }
                    ],
                    "width": 6,
                    "offset": 0,
                    "push": 0,
                    "pull": 0,
                    "size": "md",
                    "currentWidth": 6
                }
            ],
            "autoAdjust": false,
            "customClass": "",
            "hidden": false,
            "hideLabel": false,
            "modalEdit": false,
            "key": "columns",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "columns",
            "input": false,
            "placeholder": "",
            "prefix": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "clearOnHide": false,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "dataGridLabel": false,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": null,
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "allowMultipleMasks": false,
            "addons": [],
            "tree": false,
            "lazyLoad": false,
            "id": "e3x3krf"
        },
        {
            "label": "Email",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField2",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "evjaf0n"
        },
        {
            "label": "Address",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "displayMask": "",
            "editor": "",
            "autoExpand": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "persistent": true,
            "inputFormat": "html",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "minWords": "",
                "maxWords": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textArea",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textarea",
            "rows": 3,
            "wysiwyg": false,
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "allowMultipleMasks": false,
            "addons": [],
            "mask": false,
            "inputType": "text",
            "inputMask": "",
            "fixedSize": true,
            "id": "eipckir",
            "defaultValue": null
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "ei1l14t"
        }
    ]
}', N'fullForm')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1011, N'{
    "components": [
        {
            "label": "Columns",
            "columns": [
                {
                    "components": [
                        {
                            "label": "Text Field",
                            "tableView": true,
                            "key": "textField",
                            "type": "textfield",
                            "input": true,
                            "placeholder": "",
                            "prefix": "",
                            "customClass": "",
                            "suffix": "",
                            "multiple": false,
                            "defaultValue": null,
                            "protected": false,
                            "unique": false,
                            "persistent": true,
                            "hidden": false,
                            "clearOnHide": true,
                            "refreshOn": "",
                            "redrawOn": "",
                            "modalEdit": false,
                            "dataGridLabel": false,
                            "labelPosition": "top",
                            "description": "",
                            "errorLabel": "",
                            "tooltip": "",
                            "hideLabel": false,
                            "tabindex": "",
                            "disabled": false,
                            "autofocus": false,
                            "dbIndex": false,
                            "customDefaultValue": "",
                            "calculateValue": "",
                            "calculateServer": false,
                            "widget": {
                                "type": "input"
                            },
                            "attributes": {},
                            "validateOn": "change",
                            "validate": {
                                "required": false,
                                "custom": "",
                                "customPrivate": false,
                                "strictDateValidation": false,
                                "multiple": false,
                                "unique": false,
                                "minLength": "",
                                "maxLength": "",
                                "pattern": ""
                            },
                            "conditional": {
                                "show": null,
                                "when": null,
                                "eq": ""
                            },
                            "overlay": {
                                "style": "",
                                "left": "",
                                "top": "",
                                "width": "",
                                "height": ""
                            },
                            "allowCalculateOverride": false,
                            "encrypted": false,
                            "showCharCount": false,
                            "showWordCount": false,
                            "properties": {},
                            "allowMultipleMasks": false,
                            "addons": [],
                            "mask": false,
                            "inputType": "text",
                            "inputFormat": "plain",
                            "inputMask": "",
                            "displayMask": "",
                            "spellcheck": true,
                            "truncateMultipleSpaces": false,
                            "id": "edozd6"
                        }
                    ],
                    "width": 6,
                    "offset": 0,
                    "push": 0,
                    "pull": 0,
                    "size": "md",
                    "currentWidth": 6
                },
                {
                    "components": [
                        {
                            "label": "Text Field",
                            "tableView": true,
                            "key": "textField1",
                            "type": "textfield",
                            "input": true,
                            "placeholder": "",
                            "prefix": "",
                            "customClass": "",
                            "suffix": "",
                            "multiple": false,
                            "defaultValue": null,
                            "protected": false,
                            "unique": false,
                            "persistent": true,
                            "hidden": false,
                            "clearOnHide": true,
                            "refreshOn": "",
                            "redrawOn": "",
                            "modalEdit": false,
                            "dataGridLabel": false,
                            "labelPosition": "top",
                            "description": "",
                            "errorLabel": "",
                            "tooltip": "",
                            "hideLabel": false,
                            "tabindex": "",
                            "disabled": false,
                            "autofocus": false,
                            "dbIndex": false,
                            "customDefaultValue": "",
                            "calculateValue": "",
                            "calculateServer": false,
                            "widget": {
                                "type": "input"
                            },
                            "attributes": {},
                            "validateOn": "change",
                            "validate": {
                                "required": false,
                                "custom": "",
                                "customPrivate": false,
                                "strictDateValidation": false,
                                "multiple": false,
                                "unique": false,
                                "minLength": "",
                                "maxLength": "",
                                "pattern": ""
                            },
                            "conditional": {
                                "show": null,
                                "when": null,
                                "eq": ""
                            },
                            "overlay": {
                                "style": "",
                                "left": "",
                                "top": "",
                                "width": "",
                                "height": ""
                            },
                            "allowCalculateOverride": false,
                            "encrypted": false,
                            "showCharCount": false,
                            "showWordCount": false,
                            "properties": {},
                            "allowMultipleMasks": false,
                            "addons": [],
                            "mask": false,
                            "inputType": "text",
                            "inputFormat": "plain",
                            "inputMask": "",
                            "displayMask": "",
                            "spellcheck": true,
                            "truncateMultipleSpaces": false,
                            "id": "e6gjwx"
                        }
                    ],
                    "width": 6,
                    "offset": 0,
                    "push": 0,
                    "pull": 0,
                    "size": "md",
                    "currentWidth": 6
                }
            ],
            "autoAdjust": false,
            "customClass": "colbg",
            "hidden": false,
            "hideLabel": false,
            "modalEdit": false,
            "key": "columns",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "columns",
            "input": false,
            "tableView": false,
            "placeholder": "",
            "prefix": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "clearOnHide": false,
            "refreshOn": "",
            "redrawOn": "",
            "dataGridLabel": false,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": null,
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "allowMultipleMasks": false,
            "addons": [],
            "tree": false,
            "lazyLoad": false,
            "id": "e82trq7"
        }
    ]
}', N'')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1012, N'{
    "components": [
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1013, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eldbzke"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1014, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eldbzke"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'asasas')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1015, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eldbzke"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'asasas')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1016, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eldbzke"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'asasas')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1017, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eldbzke"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eto8uj4"
        }
    ]
}', N'asasas')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1018, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "eu7jeqjj"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "eouijob"
        }
    ]
}', N'')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1019, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "e1ewimi"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "elbhaq8"
        }
    ]
}', N'new')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1020, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "e1ewimi"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "elbhaq8"
        }
    ]
}', N'new')
INSERT [dbo].[schemas] ([schemaId], [jsonSchema], [schemaName]) VALUES (1021, N'{
    "components": [
        {
            "label": "Text Field",
            "labelPosition": "top",
            "placeholder": "",
            "description": "",
            "tooltip": "",
            "prefix": "",
            "suffix": "",
            "widget": {
                "type": "input"
            },
            "inputMask": "",
            "displayMask": "",
            "allowMultipleMasks": false,
            "customClass": "",
            "tabindex": "",
            "autocomplete": "",
            "hidden": false,
            "hideLabel": false,
            "showWordCount": false,
            "showCharCount": false,
            "mask": false,
            "autofocus": false,
            "spellcheck": true,
            "disabled": false,
            "tableView": true,
            "modalEdit": false,
            "multiple": false,
            "defaultValue": null,
            "persistent": true,
            "inputFormat": "plain",
            "protected": false,
            "dbIndex": false,
            "case": "",
            "truncateMultipleSpaces": false,
            "encrypted": false,
            "redrawOn": "",
            "clearOnHide": true,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "allowCalculateOverride": false,
            "validateOn": "change",
            "validate": {
                "required": false,
                "pattern": "",
                "customMessage": "",
                "custom": "",
                "customPrivate": false,
                "json": "",
                "minLength": "",
                "maxLength": "",
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "unique": false,
            "errorLabel": "",
            "errors": "",
            "key": "textField",
            "tags": [],
            "properties": {},
            "conditional": {
                "show": null,
                "when": null,
                "eq": "",
                "json": ""
            },
            "customConditional": "",
            "logic": [],
            "attributes": {},
            "overlay": {
                "style": "",
                "page": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "type": "textfield",
            "input": true,
            "refreshOn": "",
            "dataGridLabel": false,
            "addons": [],
            "inputType": "text",
            "id": "e1ewimi"
        },
        {
            "type": "button",
            "label": "Submit",
            "key": "submit",
            "size": "md",
            "block": false,
            "action": "submit",
            "disableOnInvalid": true,
            "theme": "primary",
            "input": true,
            "placeholder": "",
            "prefix": "",
            "customClass": "",
            "suffix": "",
            "multiple": false,
            "defaultValue": null,
            "protected": false,
            "unique": false,
            "persistent": false,
            "hidden": false,
            "clearOnHide": true,
            "refreshOn": "",
            "redrawOn": "",
            "tableView": false,
            "modalEdit": false,
            "dataGridLabel": true,
            "labelPosition": "top",
            "description": "",
            "errorLabel": "",
            "tooltip": "",
            "hideLabel": false,
            "tabindex": "",
            "disabled": false,
            "autofocus": false,
            "dbIndex": false,
            "customDefaultValue": "",
            "calculateValue": "",
            "calculateServer": false,
            "widget": {
                "type": "input"
            },
            "attributes": {},
            "validateOn": "change",
            "validate": {
                "required": false,
                "custom": "",
                "customPrivate": false,
                "strictDateValidation": false,
                "multiple": false,
                "unique": false
            },
            "conditional": {
                "show": null,
                "when": null,
                "eq": ""
            },
            "overlay": {
                "style": "",
                "left": "",
                "top": "",
                "width": "",
                "height": ""
            },
            "allowCalculateOverride": false,
            "encrypted": false,
            "showCharCount": false,
            "showWordCount": false,
            "properties": {},
            "allowMultipleMasks": false,
            "addons": [],
            "leftIcon": "",
            "rightIcon": "",
            "id": "elbhaq8"
        }
    ]
}', N'new')
SET IDENTITY_INSERT [dbo].[schemas] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([UserID], [FirstName], [LastName], [Email], [Mobile], [Gender], [Pwd], [MemberSince]) VALUES (48, N'a', N'a', N'test@test.com', N'22111', N'Male', N'sss', CAST(N'2022-06-09T14:21:04.4556660' AS DateTime2))
INSERT [dbo].[users] ([UserID], [FirstName], [LastName], [Email], [Mobile], [Gender], [Pwd], [MemberSince]) VALUES (49, N'shah', N'jee', N'shahjee@test.com', N'1234', N'Male', N'123456', CAST(N'2022-06-10T16:36:30.5674635' AS DateTime2))
INSERT [dbo].[users] ([UserID], [FirstName], [LastName], [Email], [Mobile], [Gender], [Pwd], [MemberSince]) VALUES (50, N'', N'', N'', N'', N'', N'', CAST(N'2022-06-15T13:52:08.1108503' AS DateTime2))
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  StoredProcedure [dbo].[SelectAllGad7]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectAllGad7]
AS
select * from gad7s
GO;
GO
/****** Object:  StoredProcedure [dbo].[spGad7s]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spGad7s]
@pageNumber  INT = 1
,@rowsPerPage INT =10
,@searchWord  NVARCHAR(250) = null
AS
BEGIN
SET NOCOUNT ON;



SELECT COUNT(Gad7Id) TotalRecords FROM gad7s 
		WHERE
	       (
	 	TreatmentStage Like '%'+@searchWord+'%'
			 OR 
		@searchWord IS NULL OR @searchWord = ''
		) 
		  

SELECT Gad7Id,
       Gad7Date
      ,TreatmentStage
      ,Score
      
  FROM gad7s 
          WHERE
	       (
	 	TreatmentStage LIKE '%'+@searchWord+'%'
			  OR 
	
		 @searchWord IS NULL OR @searchWord = ''
		) 
		   
	   ORDER BY Gad7Id desc
		
	  OFFSET ((@pageNumber - 1) * @rowsPerPage) ROWS
	  FETCH NEXT @rowsPerPage ROWS ONLY



END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllCompanies]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Usp_GetAllCompanies]  
 @PageNo INT ,  
 @PageSize INT ,  
 @SortOrder VARCHAR(200)  
As  
Begin  
    Select * From   (Select ROW_NUMBER() Over (  
    Order by CompanyName ) AS 'RowNum', *  
         from [CompanyDetails]
        )t  where t.RowNum Between ((@PageNo-1)*@PageSize +1) AND (@PageNo*@pageSize)  
End  
GO
/****** Object:  StoredProcedure [dbo].[Usp_getAllCompaniesCount]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[Usp_getAllCompaniesCount]  
As  
Begin  
        select count(CompanyId) from   [CompanyDetails]  
End  
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetCompanies]    Script Date: 5/26/2023 6:04:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Usp_GetCompanies]  
 @PageNo INT ,  
 @PageSize INT ,  
 @SortOrder VARCHAR(200)  
As  
Begin  
    Select * From   (Select ROW_NUMBER() Over (  
    Order by CompanyName ) AS 'RowNum', *  
         from   [CompanyDetails]  
        )t  where t.RowNum Between ((@PageNo-1)*@PageSize +1) AND (@PageNo*@pageSize)  
End   
GO
USE [master]
GO
ALTER DATABASE [LoginDB] SET  READ_WRITE 
GO
