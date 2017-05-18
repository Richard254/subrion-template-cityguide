{if !empty($ypPopularCategories.top)}
    <div class="b-section b-section--alt">
        <div class="b-section__title">
            <h2>{lang key='section_popular_categories_title'}</h2>
            <p>{lang key='section_popular_categories_tag'}</p>
        </div>

        <div class="b-section__content">
            <div class="container">
                <div class="row">
                    {foreach $ypPopularCategories.top as $entry}
                        <div class="col-md-4">
                            <div class="b-card b-card--1"{if $entry.category_image} style="background-image: url('{ia_image file=$entry.category_image url=true}');"{/if}>
                                <div class="b-card__content">
                                    <div class="b-card__title">{ia_url item='ycategs' type='link' data=$entry text=$entry.title}</div>
                                    <div class="b-card__tags">
                                        {if isset($ypPopularCategories.children[$entry.id])}{foreach $ypPopularCategories.children[$entry.id] as $subEntry}<a href="{ia_url item='ycategs' type='url' data=$subEntry}">{$subEntry.title|escape}</a>{if !$subEntry@last}<span>&middot;</span>{/if}{/foreach}
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>

                        {if ($entry@iteration % 3 == 0) && !$entry@last}
                            </div>
                            <div class="row m-t-md">
                        {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
{/if}