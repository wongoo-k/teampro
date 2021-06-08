var WebSquareExternal = {}; 
WebSquareExternal.baseURI = "/websquare/";
WebSquareExternal.configJSON = {
	"WebSquare" : {
		"allValue" : {
			"@value" : "all"
		},
		"docType" : {
			"@value" : "standard"
		},
		"debug" : {
			"@value" : "false",
			"@remoteConsole" : "false",
			"@console" : "false"
		},
		"debugKey" : {
			"@value" : ""
		},
		"language" : {
			"@value" : "ko"
		},
		"exceptionHandler" : {
			"@value" : "websquare"
		},
		"debugMenu" : {
			"@value" : "block"
		}, 
		"welcome-file" : {
			"#text" : "/hpe/main/HO00000RM00.xml"	///hpe/main/HO00000RM00.xml
		},
		"forcedValueSetting" : {
			"@value" : "true"
		},
		"processMsgHeight" : {
			"@value" : "240"
		},
		"processMsgWidth" : {
			"@value" : "400"
		},
		"processMsgBackground" : {
			"@value" : "true",
			"@backgroundColor" : "#112233"
		},
		"processMsgURL" : {
			"@value" : "/comhtml/processMsg.html"
		},
		"byteCheckEncoding" : {
			"@value" : "euc-kr"
		},
		"initScript" : {
			"@value" : "true"
		},
		"postScript" : {
			"@value" : "true",
			"#cdata" : "(function() {\ndelete TouchEnKey_installpage;\nif (shbComm && typeof shbComm.loadStyleSheet === 'function') {\nshbComm.loadStyleSheet();\n}\nif (!top.window._PAGEINFO_LIST && document.location.href.indexOf(\"websquare.html\") < 0 && document.location.href.indexOf('/rib/easy') < 0) {\nif (shbComm && shbComm.menu && typeof shbComm.menu.loadMenuList === 'function') {\nshbComm.menu.loadMenuList();\n}\n}\nif(shbComm && typeof shbComm.doComPageInit === 'function') {\nshbComm.doComPageInit();\n}\nif (headerObj && typeof headerObj.fncInit === 'function') {\nheaderObj.fncInit();\n}\nif (shbComm && shbComm.menu && shbComm.menu.completeSearchMenu && footerObj && typeof footerObj.fncInit === 'function') {\nfooterObj.fncInit();\n}\nif( typeof shbComm.initAllPage === 'function') {\nshbComm.initAllPage();\n}\n}());"
		},
		"clearMemory" : {
			"@value" : "false"
		},
		"stylesheet" : {
			"@value" : "stylesheet_ext.css",
			"@import" : "link",
			"@enable" : "false",
			"@earlyImportList" : ""
		},
		"style" : {
			"removeDefaultClass" : {
				"@value" : "true"
			}
		},
		"engine" : {},
		"ModelUtil" : {
			"copyChildrenNodes" : {
				"@refresh" : "false"
			}
		},
		"preProcessor" : {
			"systemPreProcessor" : {
				"@value" : "document.domain='shinhan.com';WebSquare.util.setDomain('shinhan.com');"
			},
			"businessPreProcessor" : {
				"@value" : ""
			}
		},
		"workflow" : {
			"processMsg" : {
				"@value" : ""
			}
		},
		"submission" : {
			"processMsg" : {
				"@value" : "泥섎━以묒엯�덈떎."
			},
			"showSubmissionTime" : {
				"@value" : "true"
			},
			"preSubmitFunction" : {
				"@value" : "shbComm.preSubmit"
			},
			"submitErrorHandler" : {
				"@value" : "shbComm.errorSubmit",
				"@mode" : "only"
			},
			"errorHandler" : {
				"@value" : "shbComm.errorHandler"
			},
			"callbackSubmitFunction" : {
				"@value" : "shbComm.postSubmit"
			},
			"requestID" : {
				"@value" : ""
			}
		},
		"visibleHelper" : {
			"targetHandler" : {
				"@value" : ""
			}
		},
		"spa" : {
			"onpageunload" : {
				"@value" : "shbComm.clearPageResource"
			},
			"variable" : {
				"@value" : "headerObj,footerObj,shbObj"
			},
			"scriptCache" : {
				"@value" : "false"
			},
			"autoReload" : {
				"@value" : "false",
				"@count" : "50"
			}
		},
		"scriptLoading" : {
			"@merge" : "true"
		},
		"checkUpdate" : {
			"@enable" : "false",
			"@interval" : "60000",
			"@mode" : "client",
			"@serverUrl" : ""
		},
		"engineCache" : {
			"@compression" : "true",
			"@enable" : "true",
			"@postfix" : "month"
		},
		"userAgentPattern" : {
			"@XPathParser" : "Edge",
			"@XMLParser" : "Edge"
		},
		"preserveWhiteSpace" : {
			"@value" : "false"
		},
		"environment" : {
			"@mode" : "production",
			"@cache" : "nocache",
			"@postfix" : "day"
		},
		"emptyTag" : {
			"@value" : "area,base,basefont,br,col,frame,hr,img,input,link,meta,param"
		},
		"engineLoadingMode" : {
			"@ie" : "0",
			"@moz" : "0",
			"@opera" : "0",
			"@android" : "0",
			"@iphone" : "0",
			"@chrome" : "0",
			"@safari" : "0"
		},
		"dataList" : {
			"removeDummyRowStatus" : {
				"@value" : "true"
			},
			"removedDataMatch" : {
				"@value" : "true"
			}
		},
		"grid" : {
			"collectGarbage" : {
				"@value" : "none"
			},
			"fastScroll" : {
				"@value" : "true"
			},
			"dataType" : {
				"date" : {
					"@displayFormat" : "yyyy-MM-dd"
				}
			},
			"editType" : {
				"@value" : "focus"
			},
			"rowNumBackgroundColor" : {
				"@value" : "#e5eff7"
			},
			"selectedRowColor" : {
				"@value" : "#fcf8e3"
			},
			"oddEvenColorDisplay" : {
				"@value" : "true"
			},
			"evenRowBackgroundColor" : {
				"@value" : "#f5f5f5"
			},
			"oddRowBackgroundColor" : {
				"@value" : "#ffffff"
			},
			"rowMouseOver" : {
				"@value" : "true"
			},
			"rowMouseOverColor" : {
				"@value" : "#edf3fb"
			},
			"tooltipStyle" : {
				"@value" : "padding:1px 3px 0;line-height:14px;font-size:12px;border:0;background-color:#5c85d4;color:#fff"
			},
			"noResultMessageVisible" : {
				"@value" : "true"
			},
			"noResultMessage" : {
				"@value" : ""
			},
			"pasteMessage" : {
				"@value" : "�곗씠�� 遺숈씠�� 以�"
			},
			"column" : [{
				"@inputType" : "text",
				"editType" : {
					"@value" : "select"
				},
				"escapeFormatter" : {
					"@value" : "shbComm.escapeToHTML"
				}
			}, {
				"@inputType" : "select",
				"chooseOptionLabel" : {
					"@value" : "-�좏깮-"
				}
			}, {
				"@inputType" : "calendar",
				"dataType" : {
					"@value" : "date"
				},
				"displayFormat" : [{
					"@valueType" : "yearMonth",
					"@value" : "yyyy-MM"
				}, {
					"@valueType" : "yearMonthDate",
					"@value" : "yyyy-MM-dd"
				}, {
					"@valueType" : "yearMonthDateTime",
					"@value" : "yyyy-MM-dd HH:mm"
				}, {
					"@valueType" : "yearMonthDateTimeSec",
					"@value" : "yyyy-MM-dd HH:mm:SS"
				}]
			}]
		},
		"gridView" : {
			"collectGarbage" : {
				"@value" : "none"
			},
			"fastScroll" : {
				"@value" : "true"
			},
			"dataType" : {
				"date" : {
					"@displayFormat" : "yyyy.MM.dd"
				}
			},
			"editType" : {
				"@value" : "focus"
			},
			"rowNumBackgroundColor" : {
				"@value" : "transparent"
			},
			"selectedRowColor" : {
				"@value" : "transparent"
			},
			"oddEvenColorDisplay" : {
				"@value" : "false"
			},
			"evenRowBackgroundColor" : {
				"@value" : "#f5f5f5"
			},
			"oddRowBackgroundColor" : {
				"@value" : "#ffffff"
			},
			"rowMouseOver" : {
				"@value" : "true"
			},
			"rowMouseOverColor" : {
				"@value" : "#edf3fb"
			},
			"tooltipStyle" : {
				"@value" : "padding:1px 3px 0;line-height:14px;font-size:12px;border:0;background-color:#5c85d4;color:#fff"
			},
			"noResultMessageVisible" : {
				"@value" : "true"
			},
			"noResultMessage" : {
				"@value" : ""
			},
			"noResultMessageClass" : {
				"@value" : "grdNoresultMsg"
			},
			"pasteMessage" : {
				"@value" : "�곗씠�� 遺숈씠�� 以�"
			},
			"column" : [{
				"@inputType" : "text",
				"editType" : {
					"@value" : "select"
				},
				"escapeFormatter" : {
					"@value" : "shbComm.escapeToHTML"
				}
			}, {
				"@inputType" : "select",
				"chooseOptionLabel" : {
					"@value" : "-�좏깮-"
				}
			}, {
				"@inputType" : "calendar",
				"dataType" : {
					"@value" : "date"
				},
				"displayFormat" : [{
					"@valueType" : "yearMonth",
					"@value" : "yyyy.MM"
				}, {
					"@valueType" : "yearMonthDate",
					"@value" : "yyyy.MM.dd"
				}, {
					"@valueType" : "yearMonthDateTime",
					"@value" : "yyyy.MM.dd HH:mm"
				}, {
					"@valueType" : "yearMonthDateTimeSec",
					"@value" : "yyyy.MM.dd HH:mm:SS"
				}]
			}, {
				"@inputType" : "checkbox",
				"checkboxLabel" : {
					"@value" : "�좏깮"
				}
			}, {
				"@inputType" : "radio",
				"radioLabel" : {
					"@value" : "�좏깮"
				}
			}, {
				"@inputType" : "image",
				"imageSrc" : {
					"@value" : "javascript:void(0);"
				}
			}],
			"autoFit" : {
				"@value" : "allColumn"
			},
			"hiddenClass" : {
				"@value" : "hiddenColumn"
			},
			"focusMode" : {
				"@value" : "row"
			},
			"sortable" : {
				"@value" : "true"
			},
			"editModeEvent" : {
				"@value" : "onclick"
			},
			"readOnly" : {
				"@value" : "true"
			},
			"focusMove" : {
				"@value" : "false"
			},
			"senseReader" : {
				"@value" : "true"
			},
			"keyMoveEditMode" : {
				"@value" : "true"
			},
			"sortHeaderDiv" : {
				"@value" : "true"
			},
			"captionAuto" : {
				"@value" : "true"
			}
		},
		"group" : {
			"captionAuto" : {
				"@value" : "true"
			}
		},
		"inputCalendar" : {
			"validCheck" : {
				"@value" : "false"
			},
			"dataType" : {
				"@value" : "date"
			},
			"delimiter" : {
				"@value" : "."
			},
			"mask" : {
				"@value" : "yyyy.MM.dd"
			},
			"delimiterLocaleKey" : {
				"@value" : "IC_Delimiter"
			},
			"maskLocaleKey" : {
				"@value" : "IC_Mask"
			},
			"calendarImage" : {
				"@value" : ""
			},
			"calendarImageOver" : {
				"@value" : ""
			},
			"useUnlimitedYear" : {
				"@value" : "false"
			},
			"yearSuffix" : {
				"@value" : "$blank"
			},
			"monthNames" : {
				"@value" : "1,2,3,4,5,6,7,8,9,10,11,12"
			},
			"cancelButtonShow" : {
				"@value" : "true"
			},
			"focusOnOuterDiv" : {
				"@value" : "true"
			},
			"footerDiv" : {
				"@value" : "true"
			},
			"keepFocusSelect" : {
				"@value" : "true"
			},
			"useAnchor" : {
				"@value" : "true"
			},
			"inputReadOnly" : {
				"@value" : "false"
			},
			"minYear" : {
				"@value" : "1900"
			},
			"maxYear" : {
				"@value" : "2099"
			},
			"renderType" : {
				"@value" : "native"
			}
		},
		"input" : {
			"focusStyle" : {
				"@value" : ""
			},
			"dateMask" : {
				"@value" : "yyyy-MM-dd"
			},
			"timeMask" : {
				"@value" : "HH:mm"
			},
			"focusCalcSize" : {
				"@value" : "false"
			},
			"applyFormat" : {
				"@value" : "all"
			}
		},
		"calendar" : {
			"minYear" : {
				"@value" : "1978"
			},
			"maxYear" : {
				"@value" : "2030"
			}
		},
		"selectbox" : {
			"visibleRowNum" : {
				"@value" : "5"
			},
			"renderType" : {
				"@value" : "native"
			}
		},
		"radio" : {
			"renderType" : {
				"@value" : "radiogroup"
			}
		},
		"checkbox" : {
			"renderType" : {
				"@value" : "checkboxgroup"
			}
		},
		"pageList" : {
			"renderType" : {
				"@value" : "list"
			},
			"buttonShowType" : {
				"@value" : "1"
			}
		},
		"span" : {
			"escapeFormatter" : {
				"@value" : "shbComm.escapeToHTML"
			}
		},
		"textbox" : {
			"escapeFormatter" : {
				"@value" : "shbComm.escapeToHTML"
			}
		},
		"image" : {
			"alt" : {
				"@value" : "$empty"
			},
			"src" : {
				"@value" : "/img/temp/blank.gif"
			}
		},
		"treeview" : {
			"tooltipGroupClass" : {
				"@value" : "false"
			}
		},
		"windowContainer" : {
			"tooltipGroupClass" : {
				"@value" : "false"
			}
		},
		"body" : {
			"toolTipSec" : {
				"@value" : "1"
			}
		},
		"fusionchart" : {
			"accessibility" : {
				"@value" : "true"
			},
			"axisnameInsert" : {
				"@value" : "true"
			}
		},
		"languagePack" : {
			"@useLanguagePack" : "true",
			"url" : [{
				"@lang" : "ko",
				"@value" : "/comjs/lang/ko.js"
			}, {
				"@lang" : "en",
				"@value" : "/comjs/lang/en.js"
			}]
		},
		"license" : {
			"@value" : "true"
		}
	} 
};