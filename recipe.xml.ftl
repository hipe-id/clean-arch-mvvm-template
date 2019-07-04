<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <#if generateKotlin && useAndroidX>
        <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:1.+"/>
    </#if>

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
                 to="${escapeXmlAttribute(srcOut)}/data/entity/${entityName}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/data/repository/SimpleRepositoryImpl.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/data/repository/${repositoryImpl}.${ktOrJavaExt}"/>

    <instantiate from="root/src/main/java/ui/SimpleFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/${fragmentName}.${ktOrJavaExt}"/>

    <#if generateViewModel>
        <instantiate from="root/src/main/java/ui/viewmodel/SimpleViewModel.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/ui/viewmodel/${viewModelName}.${ktOrJavaExt}"/>
    <#else>
        <instantiate from="root/src/main/java/ui/presenter/SimplePresenter.${ktOrJavaExt}.ftl"
                     to="${escapeXmlAttribute(srcOut)}/ui/presenter/${presenterName}.${ktOrJavaExt}"/>
    </#if>

    <instantiate from="root/src/main/java/ui/SimpleIntent.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/ui/${modelIntentName}.${ktOrJavaExt}"/>

    <open file="${escapeXmlAttribute(srcOut)}/domain/repository/${repositoryName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/domain/interactor/${interactorName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/data/entity/${entityName}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/data/repository/${repositoryImpl}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/ui/${fragmentName}.${ktOrJavaExt}"/>
    <#if generateViewModel>
        <open file="${escapeXmlAttribute(srcOut)}/ui/viewmodel/${viewModelName}.${ktOrJavaExt}"/>
    <#else>
        <open file="${escapeXmlAttribute(srcOut)}/ui/presenter/${presenterName}.${ktOrJavaExt}"/>
    </#if>
    <open file="${escapeXmlAttribute(srcOut)}/ui/${modelIntentName}.${ktOrJavaExt}"/>
</recipe>