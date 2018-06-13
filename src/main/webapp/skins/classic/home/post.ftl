<#--

    Symphony - A modern community (forum/BBS/SNS/blog) platform written in Java.
    Copyright (C) 2012-2018, b3log.org & hacpai.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<#include "../macro-head.ftl">
<!DOCTYPE html>
<html>
<head>
    <#if !article??><#assign postTitle = addArticleLabel><#else><#assign postTitle = updateArticleLabel></#if>
    <@head title="${postTitle} - ${symphonyLabel}">
    <meta name="robots" content="none" />
    </@head>
    <link rel="stylesheet" href="${staticServePath}/css/home.css?${staticResourceVersion}" />
    <link rel="stylesheet" href="${staticServePath}/js/lib/editor/codemirror.min.css?${staticResourceVersion}">
    <link rel="stylesheet" href="${staticServePath}/js/lib/highlight.js-9.6.0/styles/github.css">
  <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .checkboxes input {
      margin-left: 20px;
    }
    label[disabled] {
      cursor: not-allowed;
    }
    .options {
      height: 120px;
      width: 100px;
      padding: 12px;
      background-color: #EEE;
      border-radius: 6px;
    }
    .options label {
      width: 100%;
    }
  </style>
</head>
<body>
<#include "../header.ftl">
<div class="main post">
    <div class="form fn-flex-1 fn-clear">
        <input type="text" id="articleTitle" autocomplete="off" tabindex="1"<#if requisite> readonly disabled</#if>
               value="<#if article??>${article.articleTitle}</#if>" placeholder="${titleLabel}" />
        <div class="post-article-content">
            <textarea id="articleContent" tabindex="2"
                      placeholder="<#if !article?? && 1 == articleType>${addDiscussionEditorPlaceholderLabel}</#if>${addArticleEditorPlaceholderLabel}"><#if article??>${article.articleContent?html}</#if><#if at??>@${at}</#if></textarea>
        </div>
        <#if !articleType??>
            <#assign articleType=article.articleType>
        </#if>
        <#if (0 == articleType)||(1==articleType)>
        <div class="tags-wrap">
            <div class="tags-input"><span class="tags-selected"></span>
            <input id="articleTags" type="text" tabindex="3"<#if requisite> readonly disabled</#if>
                   value="<#if article??>${article.articleTags}<#else>${tags}</#if>" placeholder="${tagLabel}（${tagSeparatorTipLabel}）" autocomplete="off" />
            </div>
            <#if addArticleDomains?size != 0>
            <div class="domains-tags">
                <#list addArticleDomains as domain>
                    <#if domain.domainTags?size gt 0>
                        <span data-id="${domain.oId}" class="btn small<#if 0 == domain_index> current green</#if>">${domain.domainTitle}</span>&nbsp;
                    </#if>
                </#list>
                <#list addArticleDomains as domain>
                    <#if domain.domainTags?size gt 0>
                    <div id="tags${domain.oId}" class="domain-tags<#if 0 != domain_index> fn-none</#if>">
                        <#list domain.domainTags as tag>
                        <span class="tag">${tag.tagTitle}</span>
                        </#list>
                    </div>
                    </#if>
                </#list>
            </div>
            </#if>
        </div>
      <#--<div class="fn-clear wrapper">-->
        <#--<label <input type="checkbox" >行风建设</label>-->
        <#--<label <input type="checkbox" >公交资讯</label>-->
        <#--<label <input type="checkbox" >失物招领</label>-->
        <#--<label <input type="checkbox" >线路更新</label>-->
      <#--</div>-->
        <#elseif 2==articleType>
        <div class="tags-wrap" style="visibility: hidden;">
          <div class="tags-input"><span class="tags-selected"></span>
            <input id="articleTags" type="text" tabindex="3"<#if requisite> readonly disabled</#if>
                   value="<#if article??>${article.articleTags}<#else>${tags}</#if>" placeholder="${tagLabel}（${tagSeparatorTipLabel}）" autocomplete="off" />
          </div>
            <#if addArticleDomains?size != 0>
            <div class="domains-tags">
                <#list addArticleDomains as domain>
                    <#if domain.domainTags?size gt 0>
                        <span data-id="${domain.oId}" class="btn small<#if 0 == domain_index> current green</#if>">${domain.domainTitle}</span>&nbsp;
                    </#if>
                </#list>
                <#list addArticleDomains as domain>
                    <#if domain.domainTags?size gt 0>
                    <div id="tags${domain.oId}" class="domain-tags<#if 0 != domain_index> fn-none</#if>">
                        <#list domain.domainTags as tag>
                          <span class="tag">${tag.tagTitle}</span>
                        </#list>
                    </div>
                    </#if>
                </#list>
            </div>
            </#if>
        </div>
      <div class="fn-clear wrapper checkboxes">
        <#--<label class="article-anonymous"><input type="checkbox" id="passengerCheckBox">${passengerLabel}</label>-->
        <#--<label class="article-anonymous"><input type="checkbox" id="driverCheckBox">${driverLabel}</label>-->
        <#--&lt;#&ndash;<label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >司机一队</label>&ndash;&gt;-->
        <#--&lt;#&ndash;<label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >司机二队</label>&ndash;&gt;-->
        <#--<label class="article-anonymous" disabled="disabled"><input type="checkbox" id="managerCheckBox" disabled="disabled">${managerLabel}</label>-->
        <#--<label class="article-anonymous"><input type="checkbox" id="planerCheckBox">${planerLabel}</label>-->
        <#--<label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划一队</label>-->
        <#--<label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划二队</label>-->
        <#--<label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划三队</label>-->


        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-html="true" title="请选择" data-content='<div class="options" id="morepassenger"><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >学生卡</label><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >老年卡</label><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >普通卡</label></div>'>
            ${passengerLabel}
        </button>

        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-html="true" title="请选择" data-content='<div class="options" id="moredriver"><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >819路</label><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >23路</label></div>'>
            ${driverLabel}
        </button>

        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-html="true" title="请选择" data-content='<div class="options" id="moreplaner"><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划一队</label><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划二队</label><label class="article-anonymous"><input type="checkbox" id="driverCheckBox" >规划三队</label></div>'>
            ${planerLabel}
        </button>
          <button type="button" style="background-color: #7d8186" data-toggle="modal" data-target="#myModal">编辑群组</button>
      </div>

        <div class=""></div>


        <#--<div class="fn-clear wrapper" id="driverList" style="visibility: hidden">-->
          <#--<label class="article-anonymous"><input type="checkbox">司机一队</label>-->
          <#--<label class="article-anonymous"><input type="checkbox">司机二队</label>-->
        <#--</div>-->
        </#if>
      <#--<button id="showReward" class="fn-ellipsis"<#if requisite> readonly disabled</#if>-->
        <#--onclick="$(this).next().show(); $(this).hide()">-->
            <#--${rewardEditorPlaceholderLabel} &dtrif;-->
        <#--</button>-->
        <div class="fn-none">
            <div class="fn-clear article-reward-content">
                <textarea id="articleRewardContent" tabindex="4"
                          placeholder="${rewardEditorPlaceholderLabel}"><#if article??>${article.articleRewardContent}</#if></textarea>
            </div>
            <div>
                <input id="articleRewardPoint" type="number" tabindex="5" min="1"
                <#if article?? && 0 < article.articleRewardPoint>data-orval="${article.articleRewardPoint}"</#if>
                value="<#if article?? && 0 < article.articleRewardPoint>${article.articleRewardPoint?c}</#if>" placeholder="${rewardPointLabel}" />
            </div>
        </div>

        <div class="wrapper">
            <br>
            <#if requisite>
                <div class="tip error">
                    <ul>
                        <li>${requisiteMsg}</li>
                    </ul>
                </div>
            <#else>
                <div class="tip" id="addArticleTip"></div>
            </#if>
        </div>
        <div class="fn-clear fn-none">
            <#if !article??>
            <label> &nbsp;
                <input tabindex="6" type="radio" name="articleType" <#if 0 == articleType>checked="checked"</#if> value="0"/>
                       ${articleLabel}
            </label>
            <label id="articleType3"> &nbsp;
                <input tabindex="9" type="radio" name="articleType" <#if 3 == articleType>checked="checked"</#if> value="3"/>
                       ${thoughtLabel}
            </label>
            <label> &nbsp;
                <input tabindex="7" type="radio" name="articleType" <#if 1 == articleType>checked="checked"</#if> value="1"/>
                       ${discussionLabel}
            </label>
            <label> &nbsp;
                <input tabindex="8" type="radio" name="articleType" <#if 2 == articleType>checked="checked"</#if> value="2"/>
                       ${cityBroadcastLabel}
            </label>
            <#else>
            <input class="fn-none" type="radio" name="articleType" value="${article.articleType}" checked="checked"/>
            </#if>
        </div>
        <br/>
        <div class="fn-clear wrapper">
            <#if !articleType??>
            <#assign articleType=article.articleType>
            </#if>
            <#if 0 == articleType>
                <svg class="post__info"><use xlink:href="#article"></use></svg> ${articleLabel}
                <span class="ft-gray">${addNormalArticleTipLabel}</span>
            <#elseif 1 == articleType>
                <svg class="post__info"><use xlink:href="#locked"></use></svg> ${discussionLabel}
                <span class="ft-gray">${addDiscussionArticleTipLabel}</span>
            <#elseif 2 == articleType>
                <svg class="post__info"><use xlink:href="#feed"></use></svg> ${cityBroadcastLabel}
                <span class="ft-gray">${addCityArticleTipLabel}</span>
            <#elseif 3 == articleType>
                <svg class="post__info"><use xlink:href="#video"></use></svg> ${thoughtLabel}
                <span class="ft-gray">${addThoughtArticleTipLabel}
                <a href="https://hacpai.com/article/1441942422856" target="_blank">(?)</a></span>
            </#if>
            <div class="fn-right">
                <#if article?? && permissions["commonRemoveArticle"].permissionGrant>
                    <span class="ft-red article-anonymous fn-pointer" tabindex="11" onclick="AddArticle.remove('${csrfToken}', this)">${removeArticleLabel}</span>
                </#if>
                <#if hasB3Key>
                <label class="article-anonymous">${syncLabel}<input<#if requisite> readonly disabled</#if>
                        <#if article??> disabled="disabled"<#if article.syncWithSymphonyClient> checked</#if></#if>
                        type="checkbox" id="syncWithSymphonyClient"></label>
                </#if>
                <#--<#if permissions["commonAddArticleAnonymous"].permissionGrant>-->
                <#--<label class="article-anonymous">${anonymousLabel}<input<#if requisite> readonly disabled</#if>-->
                        <#--<#if article??> disabled="disabled"<#if 1 == article.articleAnonymous> checked</#if></#if>-->
                        <#--type="checkbox" id="articleAnonymous"></label>-->
                <#--</#if>-->

                <#if article??>
                    <#if permissions["commonUpdateArticle"].permissionGrant>
                    <button class="green" id="addArticleBtn" tabindex="10"<#if requisite> readonly disabled</#if>
                        onclick="AddArticle.add('${csrfToken}', this)">${submitLabel}</button>
                    </#if>
                <#else>
                    <#if permissions["commonAddArticle"].permissionGrant>
                    <button class="green" id="addArticleBtn" tabindex="10"<#if requisite> readonly disabled</#if>
                        onclick="AddArticle.add('${csrfToken}', this)">${postLabel}</button>
                    </#if>
                </#if>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">编辑群组</h4>
      </div>
      <div class="modal-body">
        <h5>乘客管理</h5>
        <ul class="list-group">
          <li class="list-group-item"><span>学生卡<span/><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
          <li class="list-group-item"><span>老人卡</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
          <li class="list-group-item"><span>普通卡</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
        </ul>
        <h5>司机管理</h5>
        <ul class="list-group">
          <li class="list-group-item"><span>819路</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
          <li class="list-group-item"><span>23路</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
        </ul>
        <h5>规划人员管理</h5>
        <ul class="list-group">
          <li class="list-group-item"><span>规划一队</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
          <li class="list-group-item"><span>规划二队</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
          <li class="list-group-item"><span>规划三队</span><a href="#" class="delete pull-right">删除</a><p class="pull-right">&nbsp;&nbsp;</p><a href="#" class="edit pull-right" data-toggle="modal" data-target="#myModal2">编辑</a></li>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" style="backgroundColor: #7d8186">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">编辑用户</h4>
      </div>
      <div class="modal-body">
        <h5>已添加乘客</h5>
        <ul class="list-group">
          <li class="list-group-item"><span>用户1<span/><a href="#" class="delete pull-right">删除</a></li>
          <li class="list-group-item"><span>用户2</span><a href="#" class="delete pull-right">删除</a></li>
          <li class="list-group-item"><span>用户3</span><a href="#" class="delete pull-right">删除</a></li>
        </ul>
        <h5>未添加乘客</h5>
        <ul class="list-group">
          <li class="list-group-item"><span>用户4</span><a href="#" class="add pull-right">添加</a></li>
          <li class="list-group-item"><span>用户5</span><a href="#" class="add pull-right">添加</a></li>
        </ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" style="backgroundColor: #7d8186">保存</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

<#include "../footer.ftl">
<script src="${staticServePath}/js/lib/editor/codemirror.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/highlight.js-9.6.0/highlight.pack.js"></script>
<script src="${staticServePath}/js/lib/jquery/file-upload-9.10.1/jquery.fileupload.min.js"></script>
<script src="${staticServePath}/js/lib/sound-recorder/SoundRecorder.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    Label.articleTitleErrorLabel = "${articleTitleErrorLabel}";
    Label.articleContentErrorLabel = "${articleContentErrorLabel}";
    Label.tagsErrorLabel = "${tagsErrorLabel}";
    Label.userName = "${currentUser.userName}";
    Label.recordDeniedLabel = "${recordDeniedLabel}";
    Label.recordDeviceNotFoundLabel = "${recordDeviceNotFoundLabel}";
    Label.uploadLabel = "${uploadLabel}";
    Label.audioRecordingLabel = '${audioRecordingLabel}';
    Label.uploadingLabel = '${uploadingLabel}';
    Label.articleRewardPointErrorLabel = '${articleRewardPointErrorLabel}';
    Label.addBoldLabel = '${addBoldLabel}';
    Label.addItalicLabel = '${addItalicLabel}';
    Label.insertQuoteLabel = '${insertQuoteLabel}';
    Label.addBulletedLabel = '${addBulletedLabel}';
    Label.addNumberedListLabel = '${addNumberedListLabel}';
    Label.addLinkLabel = '${addLinkLabel}';
    Label.undoLabel = '${undoLabel}';
    Label.redoLabel = '${redoLabel}';
    Label.previewLabel = '${previewLabel}';
    Label.helpLabel = '${helpLabel}';
    Label.fullscreenLabel = '${fullscreenLabel}';
    Label.uploadFileLabel = '${uploadFileLabel}';
    Label.discussionLabel = '${discussionLabel}';
    Label.insertEmojiLabel = '${insertEmojiLabel}';
    Label.qiniuDomain = '${qiniuDomain}';
    Label.qiniuUploadToken = '${qiniuUploadToken}';
    Label.commonAtUser = '${permissions["commonAtUser"].permissionGrant?c}';
    Label.requisite = ${requisite?c};
    <#if article??>Label.articleOId = '${article.oId}' ;</#if>
    Label.articleType = ${articleType};
    Label.confirmRemoveLabel = '${confirmRemoveLabel}';
</script>
<script src="${staticServePath}/js/add-article${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    Util.uploadFile({
        "id": "fileUpload",
        "pasteZone": $("#articleContent").next().next(),
        "qiniuUploadToken": "${qiniuUploadToken}",
        "editor": AddArticle.editor,
        "uploadingLabel": "${uploadingLabel}",
        "qiniuDomain": "${qiniuDomain}",
        "imgMaxSize": ${imgMaxSize?c},
        "fileMaxSize": ${fileMaxSize?c}
    });
    Util.uploadFile({
        "id": "rewardFileUpload",
        "pasteZone": $("#articleRewardContent").next().next(),
        "qiniuUploadToken": "${qiniuUploadToken}",
        "editor": AddArticle.rewardEditor,
        "uploadingLabel": "${uploadingLabel}",
        "qiniuDomain": "${qiniuDomain}",
        "imgMaxSize": ${imgMaxSize?c},
        "fileMaxSize": ${fileMaxSize?c}
    });
</script>
<script>
  $(document).ready(function() {
    $(function () {
      $('[data-toggle="popover"]').popover()
    })

      // $('#driverCheckBox').click(function(){
      //     $('#driverList').show();
      // })

    $(document).on('click', '.delete', function() {
      $(this).parents('.list-group-item').toggle();
    });
  })
</script>
</body>
</html>
