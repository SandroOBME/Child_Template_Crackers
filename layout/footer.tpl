</div>{* /content *}
{extends file="{$parent_template_path}/layout/footer.tpl"}

{*Fügt Erweiterte Infos hinzu*}
{if $Einstellungen.template.sg_footer_advantages.advantages_active != "no"}
{block name="content-wrapper-closingtag" append}
	<div id="advantages" class="container-advantages container">
		<div class="col-xs-12 col-sm-6 col-md-3 text-center">
		<i class="fa fa-phone-square"></i>
		<span class="text_top">{$Einstellungen.template.sg_footer_advantages.advantages_phone_head}</span>
		<span class="text_small">
		{$Einstellungen.template.sg_footer_advantages.advantages_phone_sub1}<br />
		{$Einstellungen.template.sg_footer_advantages.advantages_phone_sub2}
		</span>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 text-center">
		<i class="fa fa-clock-o"></i>
		<span class="text_top">{$Einstellungen.template.sg_footer_advantages.advantages_opening_head}</span>
		<span class="text_small">
		{$Einstellungen.template.sg_footer_advantages.advantages_opening_sub1}<br />
		{$Einstellungen.template.sg_footer_advantages.advantages_opening_sub2}
		</span>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 text-center">
		<i class="fa fa-paper-plane"></i>
		<span class="text_top">{$Einstellungen.template.sg_footer_advantages.advantages_delivery_head}</span>
		<span class="text_small">
		{$Einstellungen.template.sg_footer_advantages.advantages_delivery_sub1}<br />
		{$Einstellungen.template.sg_footer_advantages.advantages_delivery_sub2}
		</span>
		</div>

		<div class="col-xs-12 col-sm-6 col-md-3 text-center">
		<i class="fa fa-history"></i>
		<span class="text_top">{$Einstellungen.template.sg_footer_advantages.advantages_return_head}</span>
		<span class="text_small">
		{$Einstellungen.template.sg_footer_advantages.advantages_return_sub1}<br />
		{$Einstellungen.template.sg_footer_advantages.advantages_return_sub2}
		</span>
		</div>

</div>
{/block}{* /footer-additional *}
{/if}


{block name="footer-boxes"}
{load_boxes_raw type='bottom' assign='arrBoxBottom' array=true}
{if isset($arrBoxBottom) && count($arrBoxBottom) > 0}
	<div class="row" id="footer-boxes">
		{foreach name=bottomBoxes from=$arrBoxBottom item=box}
			<div class="{block name="footer-boxes-class"}col-xs-12 col-sm-6 col-md-3{/block}">
				{if isset($box.obj) && isset($box.tpl)}
					{if $smarty.foreach.bottomBoxes.iteration < 10}
						{assign var=oBox value=$box.obj}
						{include file=$box.tpl}
					{/if}
				{/if}
			</div>
		{/foreach}
	</div>
{/if}
{/block}



{*Fügt ein Image der Zahlungsoptionen hinzu*}
{if $Einstellungen.template.sg_footer.payment_options_active != "no"}
{block name="footer-additional" prepend}
	<div id="payment_options" class="col-xs-12 text-center">
		Webdesign by <a href="https://obme.de/" title="OBME GmbH">OBME GmbH - Online Business & Marketing Experts</a>
	</div>
{/block}{* /footer-additional *}
{/if}