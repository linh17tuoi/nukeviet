<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.validator-{NV_LANG_INTERFACE}.js"></script>
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.core.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.theme.css" rel="stylesheet" />
<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.css" rel="stylesheet" />
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.core.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>

<form action="" method="post" id="frm">
	<table class="tab1" summary="">
		<caption>
			{LANG.security}
		</caption>
		<colgroup>
			<col style="width: 350px;" />
		</colgroup>
		<tbody>
			<tr>
				<td><strong>{LANG.is_flood_blocker}</strong></td>
				<td>
				<input type="checkbox" value="1" name="is_flood_blocker" {IS_FLOOD_BLOCKER} />
				</td>
			</tr>
		</tbody>
		<tbody  class="second">
			<tr>
				<td><strong>{LANG.max_requests_60}</strong></td>
				<td>
				<input type="text" value="{MAX_REQUESTS_60}" name="max_requests_60" style="width: 50px; text-align: right" class="required digits"/>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td><strong>{LANG.max_requests_300}</strong></td>
				<td>
				<input type="text" value="{MAX_REQUESTS_300}" name="max_requests_300" style="width: 50px; text-align: right" class="required digits"/>
				</td>
			</tr>
		</tbody>
		<tbody  class="second">
			<tr>
				<td><strong>{LANG.proxy_blocker}</strong></td>
				<td>
				<select name="proxy_blocker">
					<!-- BEGIN: proxy_blocker -->
					<option value="{PROXYOP}" {PROXYSELECTED}>{PROXYVALUE} </option>
					<!-- END: proxy_blocker -->
				</select></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td><strong>{LANG.str_referer_blocker}</strong></td>
				<td>
				<input type="checkbox" value="1" name="str_referer_blocker" {REFERER_BLOCKER} />
				</td>
			</tr>
		</tbody>
	</table>
	<table class="tab1" summary="">
		<caption>
			{LANG.captcha}
		</caption>
		<colgroup>
			<col style="width: 350px;" />
		</colgroup>
		<tbody>
			<tr>
				<td><strong>{LANG.captcha}</strong></td>
				<td>
				<select name="gfx_chk">
					<!-- BEGIN: opcaptcha -->
					<option value="{OPTION.value}"{OPTION.select}>{OPTION.text}</option>
					<!-- END: opcaptcha -->
				</select></td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td><strong>{LANG.captcha_type}</strong></td>
				<td>
				<select name="captcha_type">
					<!-- BEGIN: captcha_type -->
					<option value="{OPTION.value}"{OPTION.select}>{OPTION.text}</option>
					<!-- END: captcha_type -->
				</select></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td><strong>{LANG.captcha_num}</strong></td>
				<td>
				<select name="nv_gfx_num">
					<!-- BEGIN: nv_gfx_num -->
					<option value="{OPTION.value}"{OPTION.select}>{OPTION.text}</option>
					<!-- END: nv_gfx_num -->
				</select></td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td><strong>{LANG.captcha_size}</strong></td>
				<td>
				<input class="digits" style="width:30px; text-align: right" type="text" value="{NV_GFX_WIDTH}" name="nv_gfx_width" maxlength="3"/>
				x
				<input class="digits" style="width:30px; text-align: right" type="text" value="{NV_GFX_HEIGHT}" name="nv_gfx_height" maxlength="3"/>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="submitcaptcha" value="{LANG.submit}" style="width: 100px;"/>
				</td>
			</tr>
		</tfoot>
	</table>
</form>
<script type="text/javascript">
    $(document).ready(function()
    {
        $('#frm').validate();
    }); 
</script>
<!-- BEGIN: listip -->
<table class="tab1">
	<caption>
		{LANG.banip}
	</caption>
	<thead>
		<tr class="center">
			<td>{LANG.banip_ip}</td>
			<td>{LANG.banip_mask}</td>
			<td>{LANG.banip_area}</td>
			<td>{LANG.banip_timeban}</td>
			<td>{LANG.banip_timeendban}</td>
			<td>{LANG.banip_funcs}</td>
		</tr>
	</thead>
	<!-- BEGIN: loop -->
	<tbody {ROW.class}>
		<tr>
			<td class="center">{ROW.dbip}</td>
			<td class="center">{ROW.dbmask}</td>
			<td class="center">{ROW.dbarea}</td>
			<td class="center">{ROW.dbbegintime}</td>
			<td class="center">{ROW.dbendtime}</td>
			<td class="center"><span class="edit_icon"> <a class="edit" title="{LANG.banip_edit}" href="{ROW.url_edit}#banip">{LANG.banip_edit}</a> </span> - <span class="delete_icon"> <a class="deleteone" title="{LANG.banip_delete}" href="{ROW.url_delete}">{LANG.banip_delete}</a> </span></td>
		</tr>
	</tbody>
	<!-- END: loop -->
</table>
<!-- END: listip -->
<!-- BEGIN: error -->
<div class="quote" style="width:98%">
	<blockquote class="error">
		{ERROR}
	</blockquote>
</div>
<div class="clear"></div>
<!-- END: error -->
<!-- BEGIN: manual_save -->
<div class="quote" style="width:98%">
	<blockquote class="error">
		{MESSAGE}
	</blockquote>
</div>
<div class="clear"></div>
<div class="codecontent">
	{CODE}
</div>
<!-- END: manual_save -->
<form action="{NV_BASE_ADMINURL}index.php" method="post" id="banip">
	<input type="hidden" name ="{NV_NAME_VARIABLE}"value="{MODULE_NAME}" />
	<input type="hidden" name ="{NV_OP_VARIABLE}"value="{OP}" />
	<input type="hidden" name ="cid" value="{DATA.cid}" />
	<table class="tab1">
		<col width="200"/>
		<tbody class="second">
			<tr>
				<td colspan="2"><strong>{LANG.banip_add}</strong></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>{LANG.banip_address} (<span style="color:red">*</span>)
				<br/>
				(xxx.xxx.xxx.xxx)</td>
				<td>
				<input type="text" name="ip" value="{DATA.ip}" style="width:200px"/>
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td>{LANG.banip_mask}</td>
				<td>
				<select name="mask">
					<option value="0">{MASK_TEXT_ARRAY.0}</option>
					<option value="3"{DATA.selected3}>{MASK_TEXT_ARRAY.3}</option>
					<option value="2"{DATA.selected2}>{MASK_TEXT_ARRAY.2}</option>
					<option value="1"{DATA.selected1}>{MASK_TEXT_ARRAY.1}</option>
				</select></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>{LANG.banip_area}</td>
				<td>
				<select name="area" id="area">
					<option value="0">{BANIP_AREA_ARRAY.0}</option>
					<option value="1"{DATA.selected_area_1}>{BANIP_AREA_ARRAY.1}</option>
					<option value="2"{DATA.selected_area_2}>{BANIP_AREA_ARRAY.2}</option>
					<option value="3"{DATA.selected_area_3}>{BANIP_AREA_ARRAY.3}</option>
				</select></td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td>{LANG.banip_begintime}</td>
				<td>
				<input type="text" name="begintime" class="datepicker" value="{DATA.begintime}" style="width:150px"/>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td>{LANG.banip_endtime}</td>
				<td>
				<input type="text" name="endtime" class="datepicker" value="{DATA.endtime}" style="width:150px"/>
				</td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td>{LANG.banip_notice}</td>
				<td>				<textarea cols="" rows="7" name="notice" style="width:250px;height:100px">{DATA.notice}</textarea></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td colspan="2" class="center">
				<input type="submit" value="{LANG.banip_confirm}" name="submit"/>
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script type="text/javascript">
    //<![CDATA[
    $(document).ready(function()
    {
        $(".datepicker").datepicker(
        {
            showOn : "button",
            dateFormat : "dd/mm/yy",
            changeMonth : true,
            changeYear : true,
            showOtherMonths : true,
            buttonImage : nv_siteroot + "images/calendar.gif",
            buttonImageOnly : true
        });

        $('input[name=submit]').click(function()
        {
            var ip = $('input[name=ip]').val();
            $('input[name=ip]').focus();
            if (ip == '')
            {
                alert('{LANG.banip_error_ip}');
                return false;
            }
            var area = $('select[name=area]').val();
            $('select[name=area]').focus();
            if (area == '0')
            {
                alert('{LANG.banip_error_area}');
                return false;
            }
        });
        $('a.deleteone').click(function()
        {
            if (confirm('{LANG.banip_delete_confirm}'))
            {
                var url = $(this).attr('href');
                $.ajax(
                {
                    type : 'POST',
                    url : url,
                    data : '',
                    success : function(data)
                    {
                        alert('{LANG.banip_del_success}');
                        window.location = 'index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}';
                    }
                });
            }
            return false;
        });
    });
    //]]>
</script>
<!-- END: main -->
