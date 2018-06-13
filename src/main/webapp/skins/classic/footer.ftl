<div class="footer" style="margin-bottom: 0">
    <div class="wrapper">
        <div class="slogan" style="font-size: large">
            公交管理系统客服论坛，您的建议是我们前进的动力！
        </div>
        <div class="fn-flex-1">
            <div class="footer-nav fn-clear">
                <#--<a rel="help" href="${servePath}/about">${aboutLabel}</a>-->
                <#--<a href="https://hacpai.com/article/1457158841475">API</a>-->
                <#--<a href="${servePath}/tag/announcement">${symAnnouncementLabel}</a>-->
                <#--<a href="${servePath}/domains">${domainLabel}</a>-->
                <#--<a href="${servePath}/tags">${tagLabel}</a>-->
                <#--<a href="${servePath}/statistic">${dataStatLabel}</a>-->

                <div class="fn-right">&COPY; ${year}
                    <a rel="copyright"  target="_blank">copyright BMS</a>
                </div>
            <#--</div>-->
            <#--<div class="fn-clear ft-smaller">-->
                       <#--${sloganLabel}-->
                    <#--&lt;#&ndash;<div class="fn-right">&ndash;&gt;-->
                       <#--&lt;#&ndash;Powered by <a href="https://b3log.org" target="_blank">B3log 开源</a> •&ndash;&gt;-->
                            <#--&lt;#&ndash;<a href="https://sym.b3log.org" target="_blank">Sym</a>&ndash;&gt;-->
                            <#--&lt;#&ndash;${version} • ${elapsed?c}ms&ndash;&gt;-->
                    <#--&lt;#&ndash;</div>&ndash;&gt;-->
                <#--</div>-->
        <#--</div>-->
    </div>
</div>

<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        reloginLabel: "${reloginLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
		notificationCommentedLabel: '${notificationCommentedLabel}',
		notificationReplyLabel: '${notificationReplyLabel}',
		notificationAtLabel: '${notificationAtLabel}',
		notificationFollowingLabel: '${notificationFollowingLabel}',
		pointLabel: '${pointLabel}',
		sameCityLabel: '${sameCityLabel}',
		systemLabel: '${systemLabel}',
		newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}',
        <#if isLoggedIn>
            currentUserName: '${currentUser.userName}',
        </#if>
        <#if csrfToken??>
            csrfToken: '${csrfToken}'
        </#if>
    };

    <#if isLoggedIn>
    Label.userKeyboardShortcutsStatus = '${currentUser.userKeyboardShortcutsStatus}';
    </#if>

    Util.init(${isLoggedIn?c});

    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel");
    </#if>

    <#if mouseEffects>
    Util.mouseClickEffects();
    </#if>
</script>
<#if algoliaEnabled>
<script src="${staticServePath}/js/lib/algolia/algolia.min.js"></script>
<script>
    Util.initSearch('${algoliaAppId}', '${algoliaSearchKey}', '${algoliaIndex}');
</script>
</#if>
${footerPCCode}
