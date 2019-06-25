<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if isNewProject || generateBase>
    <instantiate from="root/src/app_package/BasePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BasePresenter.java" />
    <instantiate from="root/src/app_package/BaseView.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/BaseView.java" />
</#if>

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.java" />

    <instantiate from="root/src/app_package/SimpleContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Contract.java" />

    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Fragment.java" />

    <instantiate from="root/src/app_package/SimplePresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Presenter.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.java" />
</recipe>