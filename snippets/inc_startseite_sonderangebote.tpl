{if isset($StartseiteBoxen) && $StartseiteBoxen|@count > 0 }
	{foreach name=startboxen from=$StartseiteBoxen item=Box}
		{if $Box->name === 'Sonderangebote' && isset($Box->Artikel->elemente)}
			{assign var='moreLink' value=null}
			{assign var='moreTitle' value=null}
			{lang key="specialOffer" section="custom" assign='title'}
			{lang key='showAllSpecialOffers' section='global' assign='moreTitle'}
			{assign var='moreLink' value=$Box->cURL}
			{include file='snippets/product_slider.tpl' productlist=$Box->Artikel->elemente title=$title hideOverlays=true moreLink=$moreLink moreTitle=$moreTitle}
		{/if}
	{/foreach}
{/if}