<?xml version="1.0"?>
<recipe>
    <#if generateLayout>
        <instantiate from="root/src/main/res/layout/fragment_simple.xml.ftl"
                     to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
    </#if>

    <instantiate from="root/src/main/java/SimpleFragment.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt"/>

    <instantiate from="root/src/main/java/interactor/GetSimple.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/interactor/${interactorName}.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/interactor/${interactorName}.kt"/>
</recipe>