{**
 * templates/frontend/objects/article_summary.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief View of an Article summary which is shown within a list of articles.
 *
 * @uses $article Article The article
 * @uses $hasAccess bool Can this user access galleys for this context? The
 *       context may be an issue or an article
 * @uses $showDatePublished bool Show the date this article was published?
 * @uses $hideGalleys bool Hide the article galleys for this article?
 * @uses $primaryGenreIds array List of file genre ids for primary file types
 *}
{assign var=articlePath value=$article->getBestArticleId()}

{if (!$section.hideAuthor && $article->getHideAuthor() == $smarty.const.AUTHOR_TOC_DEFAULT) || $article->getHideAuthor() == $smarty.const.AUTHOR_TOC_SHOW}
	{assign var="showAuthor" value=true}
{/if}

{assign var=publication value=$article->getCurrentPublication()}
<div class="obj_article_summary">
	{if $publication->getLocalizedData('coverImage')}
		<div class="cover">
			<a {if $journal}href="{url journal=$journal->getPath() page="article" op="view" path=$articlePath}"{else}href="{url page="article" op="view" path=$articlePath}"{/if} class="file">
				{assign var="coverImage" value=$article->getCurrentPublication()->getLocalizedData('coverImage')}
				<img
					src="{$article->getCurrentPublication()->getLocalizedCoverImageUrl($article->getData('contextId'))|escape}"
					alt="{$coverImage.altText|escape|default:''}"
				>
			</a>
		</div>
	{/if}

	<div class="title">
		<a id="article-{$article->getId()}" {if $journal}href="{url journal=$journal->getPath() page="article" op="view" path=$articlePath}"{else}href="{url page="article" op="view" path=$articlePath}"{/if}>
			{$article->getLocalizedTitle()|strip_unsafe_html}
			{if $article->getLocalizedSubtitle()}
				<span class="subtitle">
					{$article->getLocalizedSubtitle()|escape}
				</span>
			{/if}
		</a>
	</div>

	{if $showAuthor || $article->getPages() || ($article->getDatePublished() && $showDatePublished)}
	<div class="meta">
		{if $showAuthor}
		<div class="authors">
			{$article->getAuthorString()|escape}
		</div>
		{/if}

		{* Page numbers for this article *}
		{if $article->getPages()}
			<div class="pages">
				{$article->getPages()|escape}
			</div>
		{/if}

		{if $showDatePublished && $article->getDatePublished()}
			<div class="published">
				{$article->getDatePublished()|date_format:$dateFormatShort}
			</div>
		{/if}

	</div>
	{/if}

<div class="tocreadcount">
			{if is_a($article, 'PublishedArticle')}{assign var=galleys value=$article->getGalleys()}{/if}
			<span>{$totalViews}</span> <span>{translate key="article.abstract"} views:</span> <span><strong>{$article->getViews()}</strong></span> 
            {if $galleys}
            {foreach from=$galleys item=galley name=galleyList}
                <span> | <i class="fa fa-file-pdf-o" aria-hidden="true"></i> {$galley->getGalleyLabel()} views:</span> <span><strong>{$galley->getViews()}</strong></span> 
            {/foreach}
            {/if}
		</div>
        <div class="item doi">
           
            {foreach from=$pubIdPlugins item=pubIdPlugin}
                {if $issue->getPublished()}
                    {assign var=pubId value=$article->getStoredPubId($pubIdPlugin->getPubIdType())}
                {else}
                    {assign var=pubId value=$pubIdPlugin->getPubId($article)}{* Preview pubId *}
            
                {/if}
                {if $pubId}
                    {assign var="doiUrl" value=$pubIdPlugin->getResolvingURL($currentJournal->getId(), $pubId)|escape}
                  <span class="label" DOI: <a href="{$doiUrl}"
                  target="_blank">
                      {$doiUrl} 
                      </a>
                      
                      </span>
                    
                    
                {/if}
                {/foreach}
        </div>


	{if !$hideGalleys}
		<ul class="galleys_links">
			{foreach from=$article->getGalleys() item=galley}
				{if $primaryGenreIds}
					{assign var="file" value=$galley->getFile()}
					{if !$galley->getRemoteUrl() && !($file && in_array($file->getGenreId(), $primaryGenreIds))}
						{continue}
					{/if}
				{/if}
				<li>
					{assign var="hasArticleAccess" value=$hasAccess}
					{if $currentContext->getSetting('publishingMode') == $smarty.const.PUBLISHING_MODE_OPEN || $publication->getData('accessStatus') == $smarty.const.ARTICLE_ACCESS_OPEN}
						{assign var="hasArticleAccess" value=1}
					{/if}
					{include file="frontend/objects/galley_link.tpl" parent=$article labelledBy="article-{$article->getId()}" hasAccess=$hasArticleAccess purchaseFee=$currentJournal->getData('purchaseArticleFee') purchaseCurrency=$currentJournal->getData('currency')}
				</li>
			{/foreach}
		</ul>
	{/if}

	{call_hook name="Templates::Issue::Issue::Article"}
</div>
