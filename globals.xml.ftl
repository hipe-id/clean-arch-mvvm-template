<?xml version="1.0"?>
<globals>
    <global id="simpleLayoutName" value="${layoutName}"/>
    <global id="excludeMenu" type="boolean" value="true"/>
    <global id="resOut" value="${resDir}"/>
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}"/>
    <#include "../common/common_globals.xml.ftl" />
</globals>
