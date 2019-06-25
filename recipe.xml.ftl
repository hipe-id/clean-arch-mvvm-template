<?xml version="1.0"?>
<recipe>
    <#if generateLayout>
        <#include "../common/recipe_simple.xml.ftl" />
        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
    </#if>

    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.kt"/>

    <instantiate from="root/src/app_package/SimpleContract.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}Contract.kt"/>

    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}Fragment.kt"/>

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityClass}Presenter.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.kt"/>
</recipe>