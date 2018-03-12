{if !empty($newVenues)}
    <div class="row">
        {foreach $newVenues as $page}
            <div class="col-md-3">
                <div class="b-card b-card--border">
                    <div class="b-card__image">
                        <a href="{$page.link}">
                            {ia_image file=$page.image title=$page.venue_title class='img-responsive' type='thumbnail'}
                        </a>

                        {printFavorites item=$page itemtype=$page.item guests=true tpl='no-text' classname='b-card__fav'}
                        {if 'yellowpages_home' != $core.page.name && isset($page.category_title) && '' != $page.category_title}
                            <a class="b-card__cat" href="{ia_url item='ycateg' type='url' data=$page action='view'}" data-toggle="tooltip" title="{$page.category_title}"><span class="fa fa-{if $page.category_icon_class}{$page.category_icon_class}{else}folder{/if}"></span></a>
                        {/if}
                    </div>
                    <div class="b-card__content">
                        {ia_hooker name='smartyItemBlockBeforeTitle'}
                        <div class="b-card__title">{ia_url type='link' item=$page.item data=$page text=$page.venue_title}</div>
                        <span class="fa fa-map-marker"></span> {$page.address}, {ia_url item='yloc' type='link' data=$page text=$page.location} {if !empty($page.zipcode)}, {$page.zipcode}{/if}
                    </div>
                </div>
            </div>

            {if ($page@iteration % 4 == 0) && !$page@last}
                </div>
                <div class="row m-t">
            {/if}
        {/foreach}
    </div>
{else}
    <div class="alert alert-info">{lang key='no_venues_here'}</div>
{/if}
