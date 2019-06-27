<?xml version="1.0"?>
<recipe>
    <#if generateLayout>
        <instantiate from="root/src/main/res/layout/fragment_simple.xml.ftl"
                     to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

        <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>
    </#if>

    <instantiate from="root/src/main/java/domain/repository/SimpleRepository.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/domain/repository/${repositoryName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/domain/model/Simple.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/domain/model/${modelName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/domain/interactor/GetSimple.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/domain/interactor/${interactorName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/data/entity/SimpleEntity.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/data/entity/${modelName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/data/repository/SimpleRepositoryImpl.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/data/repository/${repositoryName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/ui/SimpleFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/${fragmentName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/ui/SimpleViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/${viewModelName}.${ktOrJavaExt}"/>

    <open file="${escapeXmlAttribute(srcOut)}/domain/repository/${repositoryName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/domain/interactor/${interactorName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/data/entity/${entityName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/data/repository/${repositoryName}Impl.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/ui/${fragmentName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/ui/${viewModelName}.${ktOrJavaExt}"/>
</recipe>