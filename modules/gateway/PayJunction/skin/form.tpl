<h2>{$LANG.orders.title_card_details}</h2>
<table width="100%" cellpadding="3" cellspacing="10" border="0">
	<tr>
		<td width="140">{$LANG.user.name_first}</td>
		<td><input type="text" name="firstName" value="{$CUSTOMER.first_name}" /></td>
	</tr>
	<tr>
		<td width="140">{$LANG.user.name_last}</td>
		<td><input type="text" name="lastName" value="{$CUSTOMER.last_name}" /></td>
  	</tr>
  	<tr>
		<td width="140">{$LANG.gateway.card_number}</td>
		<td><input type="text" name="cardNumber" value="" size="16" maxlength="16" /></td>
  	</tr>
    <tr>
		<td width="140">{$LANG.gateway.card_expiry_date}</td>
		<td>
			<select name="expirationMonth" class="textbox">
				{foreach from=$CARD.months item=month}<option value="{$month.value}" {$month.selected}>{$month.display}</option>{/foreach}
    		</select> 
			/ 
			<select name="expirationYear" class="textbox">
				{foreach from=$CARD.years item=year}<option value="{$year.value}" {$year.selected}>{$year.value}</option>{/foreach}
			</select>
		</td>
  	</tr>
  	<tr>
		<td width="140">{$LANG.gateway.card_security}</td>
		<td><input type="text" name="cvc2" value="" size="5" maxlength="4" style="text-align: center;" class="textbox_small" />
			<a href="images/general/cvv.gif" class="colorbox" title="{$LANG.gateway.card_security}" /> {$LANG.common.whats_this}</a>
		</td>
  	</tr>
</table>

<h2>{$LANG.basket.customer_info}</h2>
<table width="100%" cellpadding="3" cellspacing="10" border="0">				
	<tr>
		<td width="140">{$LANG.common.email}</td>
		<td><input type="text" name="emailAddress" value="{$CUSTOMER.email}" size="50" /></td>
	</tr>
	<tr>
		<td width="140">{$LANG.address.line1}</td>
		<td><input type="text" name="addr1" value="{$CUSTOMER.line1}" size="50" /></td>
	</tr>
	<tr>
		<td width="140">{$LANG.address.line2}</td>
		<td><input type="text" name="addr2" value="{$CUSTOMER.line2}" size="50" /></td>
	</tr>
	<tr>
		<td width="140">{$LANG.address.town}</td>
		<td><input type="text" name="city" value="{$CUSTOMER.town}" /></td>
	</tr>
	<tr>
  		<td width="140">{$LANG.address.country}</td>
  		<td>
			<select name="country" class="textbox">
		{foreach from=$COUNTRIES item=country}<option value="{$country.iso}"{$country.selected}>{$country.name}</option>{/foreach}
	  		</select>
		</td>
  	</tr>
  	<tr>
		<td width="140">{$LANG.address.state}</td>
		<td><input type="text" name="state" value="{$CUSTOMER.state}" size="10" /></td>
  	</tr>
  	<tr>
		<td width="140">{$LANG.address.postcode}</td>
		<td><input type="text" name="postcode" value="{$CUSTOMER.postcode}" size="10" maxlength="10" /></td>
  	</tr>
</table>