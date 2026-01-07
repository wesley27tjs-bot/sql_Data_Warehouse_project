PRINT 'Creating Silver Layer Tables'
PRINT'/*******************************************************************************************************************/'

Print 'Creating CRM Tables'
PRINT'======================================================================================================================'
--Reset silver.crm_cust_info
truncate silver.crm_cust_info

/*use CREATE TABLE to create the table for customer info*/
CREATE TABLE silver.crm_cust_info(
	-- cst_id is INT, cst_key, cst_firstname, cst_lastname, cst_martial_status and cst_gndr are NVARCHAR (50) and cst_create_date is DATE
	cst_id INT NULL, 
	cst_key NVARCHAR (50) NULL, 
	cst_firstname NVARCHAR (50) NULL, 
	cst_lastname NVARCHAR (50) NULL, 
	cst_martial_status NVARCHAR (50) NULL,
	cst_gndr NVARCHAR (50) NULL,
	cst_create_date DATE NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Reset silver.crm_prd_info
truncate silver.crm_prd_info

/*use CREATE TABLE to create the table for product info*/
CREATE TABLE silver.crm_prd_info (
-- prd_id and prd_cost are INT, prd_key, prd_nm and prd_line are NVARCHAR (50), prd_start_dt and prd_end_dt are DATE
	prd_id INT NULL,
	prd_key NVARCHAR (50) NULL, 
	prd_nm NVARCHAR (50) NULL, 
	prd_cost INT NULL,
	prd_line NVARCHAR (50) NULL,
	prd_start_dt DATE NULL,
	prd_end_dt DATE NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Reset silver.crm_sales_details
truncate silver.crm_sales_details

/*use CREATE TABLE to create the table for sales details*/
CREATE TABLE silver.crm_sales_details (
--sls_ord_num and sls_prd_key are  NVARCHAR (50), sls_cust_id, sls_order_dt, sls_ship_dt, sls_due_dt, sls_sales, sls_quantity and sls price are INT
	sls_ord_num NVARCHAR (50) NULL,
	sls_prd_key NVARCHAR (50) NULL, 
	sls_cust_id INT NULL, 
	sls_order_dt INT NULL, 
	sls_ship_dt INT NULL, 
	sls_due_dt INT NULL, 
	sls_sales INT NULL, 
	sls_quantity INT NULL, 
	sls_price INT NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
PRINT'======================================================================================================================'

Print 'Creating ERP Tables'
PRINT'======================================================================================================================'
--Reset silver.erp_CUST_AZ12
truncate silver.erp_CUST_AZ12

/*use CREATE TABLE to create the table for CUST AZ12*/
CREATE TABLE silver.erp_CUST_AZ12 (
--cid and gen are NVARCHAR (50), bdate is DATE
	cid NVARCHAR (50) NULL,
	bdate DATE,
	gen NVARCHAR (50) NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Reset silver.erp_LOC_A101
truncate silver.erp_LOC_A101

/*use CREATE TABLE to create the table for product info*/
CREATE TABLE silver.erp_LOC_A101 (
--cid and cntry are NVARCHAR (50)
	cid NVARCHAR (50) NULL,
	cntry NVARCHAR (50) NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);

--Reset silver.erp_PX_CAT_G1V2
truncate silver.erp_PX_CAT_G1V2

/*use CREATE TABLE to create the table for sales details*/
CREATE TABLE silver.erp_PX_CAT_G1V2 (
--id, cat, subcat and maintenance are NVARCHAR (50)
	id NVARCHAR (50) NULL, 
	cat NVARCHAR (50) NULL, 
	subcat NVARCHAR (50) NULL, 
	maintenance NVARCHAR (50) NULL,
	dwh_create_date DATETIME2 DEFAULT GETDATE()
);
PRINT'======================================================================================================================'
