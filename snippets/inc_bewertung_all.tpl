    {block name="productdetails-review-content"}
    <div class="top5" itemref="product-offer" itemscope itemtype="http://schema.org/Review">
        <span itemprop="name" class="hidden">{$oBewertung->cTitel}</span>
        <span itemprop="itemReviewed" itemscope itemtype="http://schema.org/Product">
            <span itemprop="name" class="hidden">{$Artikel->cName}</span>
        </span>
        <span itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating">
            <span class="pull-right">
                {include file='productdetails/rating.tpl' stars=$oBewertung->nSterne}
                <small class="hide">
                    <span itemprop="ratingValue">{$oBewertung->nSterne}</span> {lang key="from" section="global"}
                    <span itemprop="bestRating">5</span></small>
            </span>
            <strong>{$oBewertung->cTitel}</strong>
            {if $Einstellungen.bewertung.bewertung_hilfreich_anzeigen === 'Y'}
                {if isset($smarty.session.Kunde) && $smarty.session.Kunde->kKunde > 0 && $smarty.session.Kunde->kKunde != $oBewertung->kKunde}
                    <span class="review-helpful vmiddle" id="help{$oBewertung->kBewertung}">
                        <button class="helpful btn btn-blank btn-xs" title="{lang key="yes"}" name="hilfreich_{$oBewertung->kBewertung}" type="submit">
                            <i class="fa fa-thumbs-up"></i>
                        </button>
                        <button class="not_helpful btn btn-blank btn-xs" title="{lang key="no"}" name="nichthilfreich_{$oBewertung->kBewertung}" type="submit">
                            <i class="fa fa-thumbs-down"></i>
                        </button>
                    </span>
                {/if}
            {/if}
        </span>
        <hr class="hr-sm">
        <blockquote>
            <p itemprop="reviewBody">{$oBewertung->cText|nl2br}</p>
            <small>
                <cite><span itemprop="author" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{$oBewertung->cName}</span></span>.</cite>,
                <meta itemprop="datePublished" content="{$oBewertung->dDatum}" />{$oBewertung->Datum}
            </small>
        </blockquote>
        <img itemprop="image" src="{$Artikel->cVorschaubild}" alt="{$oBewertung->cTitel}" class="hidden" />
    </div>
    {/block}