/**
 * (C) Copyright AhnLab, Inc.
 *
 * Any part of this source code can not be copied with
 * any method without prior written permission from
 * the author or authorized person.
 *
 * @version		$Revision: 16629 $
 *
 */

var $ASTX2_CUST =
{
	// Customer option
	/*
	mUseJQuery:   false, 	// Whether to use JQuery.
	mCustomerID:  'custid',	// Customer ID for setProtect.

	E2EFORM_TAIL: true,
	E2EFORM_INIT: '_e2e_forminit',
	E2EFORM_TAG1: '_e2e_1__',
	E2EFORM_TAG2: '_e2e_2__',
	E2EFORM_TAG1_PWD: '_e2e_1_pwd__',
	E2EFORM_TAG2_PWD: '_e2e_2_pwd__',
	*/

	// ASTX2_CUST defined values
	URL_GET_INIT  : 101,
	URL_GET_CERT  : 102,
	URL_GET_STAMP : 103,
	URL_CHK_STAMP : 104,

	getURL: function(type)
	{
		var result = '';

		//<protocol>//<hostname>:<port>
		var url = window.location.protocol+'//'+window.location.hostname;
		url += (window.location.port ? ':'+window.location.port : '');

		switch(type)
		{
			case this.URL_GET_INIT :
				result = url+'/sw/astx/do_get_init.jsp';
			break;
			case this.URL_GET_CERT :
				result = url+'/sw/astx/do_get_cert.jsp';
			break;
			case this.URL_GET_STAMP :
				result = url+'/sw/astx/do_get_stamp.jsp';
			break;
			case this.URL_CHK_STAMP :
				result = url+'/sw/astx/do_chk_stamp.jsp';
			break;
		} // end of switch

		return result;
	},

	isE2EObject: function(obj)
	{
		return false;
	},

	getE2Etype: function(obj)
	{
		return null;
	},

	onCreatedFormValue: function(obj, obj_name)
	{

	},

	onHandlerPreFocus: function(obj, event)
	{

	},

	onHandlerKeyDown: function(obj, event)
	{
		return true;
	},

	getErrorMessage: function(errno)
	{
		var message = '[ASTx] ';

		switch(errno)
		{
			case $ASTX2_CONST.ERROR_FAILED:
				message += "내부 오류가 발생하였습니다.";
			break;
			case $ASTX2_CONST.ERROR_NOINIT:
				message += "초기화가 필요합니다.";
			break;
			case $ASTX2_CONST.ERROR_NOTINST:
				message += "설치되어 있지 않습니다.";
			break;
			case $ASTX2_CONST.ERROR_NOTSUPPORTED:
				message += "지원하지 않는 OS입니다.";
			break;
			case $ASTX2_CONST.ERROR_NOCONNECT:
				message += "서버(Web) 연결에 실패하였습니다.";
			break;
			case $ASTX2_CONST.ERROR_NCK:
				message += "서버(Local) 응답 실패입니다.";
			break;
			case $ASTX2_CONST.ERROR_ERR:
				message += "서버(Local) 내부 오류입니다.";
			break;
			case $ASTX2_CONST.ERROR_NSP:
				message += "지원하지 되지 않는 환경입니다.";
			break;
			case $ASTX2_CONST.ERROR_PARAM:
				message += "잘못된 인자입니다.";
			break;
			case $ASTX2_CONST.ERROR_PARAM:
				message += "재시도 회수를 초과 하였습니다.";
			break;
			case $ASTX2_CONST.ERROR_NEEDUPDATE:
				message += "제품 업데이트가 필요합니다.";
			break;
			default:
				message += 'errno='+errno;
			break;
		} // end of switch

		return message;
	},

	errorAbort: function(errno)
	{
		alert(this.getErrorMessage(errno));
	}
};