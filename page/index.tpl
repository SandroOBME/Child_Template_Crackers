{if !empty($oAuswahlAssistent->kAuswahlAssistentGruppe)}
    {$xajax_javascript}
    <div id="selection_wizard">
    {include file="productwizard/form.tpl"}
		
        {if $Einstellungen.template.startseite.order_eins != '0'}{assign var=order_eins value=$Einstellungen.template.startseite.order_eins}{/if}
        {if $Einstellungen.template.startseite.order_zwei != '0'}{assign var=order_zwei value=$Einstellungen.template.startseite.order_zwei}{/if}
        {if $Einstellungen.template.startseite.order_drei != '0'}{assign var=order_drei value=$Einstellungen.template.startseite.order_drei}{/if}
        {if $Einstellungen.template.startseite.order_vier != '0'}{assign var=order_vier value=$Einstellungen.template.startseite.order_vier}{/if}
        {if $Einstellungen.template.startseite.order_fuenf != '0'}{assign var=order_fuenf value=$Einstellungen.template.startseite.order_fuenf}{/if}
        {if $Einstellungen.template.startseite.order_sechs != '0'}{assign var=order_sechs value=$Einstellungen.template.startseite.order_sechs}{/if}
        {if $Einstellungen.template.startseite.order_sieben != '0'}{assign var=order_sieben value=$Einstellungen.template.startseite.order_sieben}{/if}
        {if $Einstellungen.template.startseite.order_acht != '0'}{assign var=order_acht value=$Einstellungen.template.startseite.order_acht}{/if}
        {if $Einstellungen.template.startseite.order_neun != '0'}{assign var=order_neun value=$Einstellungen.template.startseite.order_neun}{/if}


        {if $order_eins}{include file="snippets/inc_startseite_`$order_eins`.tpl"}{/if}
        {if $order_zwei}{include file="snippets/inc_startseite_`$order_zwei`.tpl"}{/if}
        {if $order_drei}{include file="snippets/inc_startseite_`$order_drei`.tpl"}{/if}
        {if $order_vier}{include file="snippets/inc_startseite_`$order_vier`.tpl"}{/if}
        {if $order_fuenf}{include file="snippets/inc_startseite_`$order_fuenf`.tpl"}{/if}
        {if $order_sechs}{include file="snippets/inc_startseite_`$order_sechs`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_sieben`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_acht`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_neun`.tpl"}{/if}
    </div>
{elseif isset($AWA)}
    {include file="selectionwizard/index.tpl"}
        {if $Einstellungen.template.startseite.order_eins != '0'}{assign var=order_eins value=$Einstellungen.template.startseite.order_eins}{/if}
        {if $Einstellungen.template.startseite.order_zwei != '0'}{assign var=order_zwei value=$Einstellungen.template.startseite.order_zwei}{/if}
        {if $Einstellungen.template.startseite.order_drei != '0'}{assign var=order_drei value=$Einstellungen.template.startseite.order_drei}{/if}
        {if $Einstellungen.template.startseite.order_vier != '0'}{assign var=order_vier value=$Einstellungen.template.startseite.order_vier}{/if}
        {if $Einstellungen.template.startseite.order_fuenf != '0'}{assign var=order_fuenf value=$Einstellungen.template.startseite.order_fuenf}{/if}
        {if $Einstellungen.template.startseite.order_sechs != '0'}{assign var=order_sechs value=$Einstellungen.template.startseite.order_sechs}{/if}
        {if $Einstellungen.template.startseite.order_sieben != '0'}{assign var=order_sieben value=$Einstellungen.template.startseite.order_sieben}{/if}
        {if $Einstellungen.template.startseite.order_acht != '0'}{assign var=order_acht value=$Einstellungen.template.startseite.order_acht}{/if}
        {if $Einstellungen.template.startseite.order_neun != '0'}{assign var=order_neun value=$Einstellungen.template.startseite.order_neun}{/if}


        {if $order_eins}{include file="snippets/inc_startseite_`$order_eins`.tpl"}{/if}
        {if $order_zwei}{include file="snippets/inc_startseite_`$order_zwei`.tpl"}{/if}
        {if $order_drei}{include file="snippets/inc_startseite_`$order_drei`.tpl"}{/if}
        {if $order_vier}{include file="snippets/inc_startseite_`$order_vier`.tpl"}{/if}
        {if $order_fuenf}{include file="snippets/inc_startseite_`$order_fuenf`.tpl"}{/if}
        {if $order_sechs}{include file="snippets/inc_startseite_`$order_sechs`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_sieben`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_acht`.tpl"}{/if}
        {if $order_sieben}{include file="snippets/inc_startseite_`$order_neun`.tpl"}{/if}
	
{/if}
