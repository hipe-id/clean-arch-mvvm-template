<?xml version="1.0"?>
<recipe>
    <#if generateLayout>
        <instantiate from="root/src/main/res/layout/fragment_simple.xml.ftl"
                     to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
    </#if>

    <instantiate from="root/src/main/java/SimpleFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt"/>

    <instantiate from="root/src/main/java/model/Simple.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/${modelName}.kt"/>

    <instantiate from="root/src/main/java/SimpleViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelName}.kt"/>

    <instantiate from="root/src/main/java/interactor/GetSimple.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/interactor/${interactorName}.kt"/>

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/${viewModelName}.kt"/>
    <open file="${escapeXmlAttribute(srcOut)}/interactor/${interactorName}.kt"/>
</recipe>