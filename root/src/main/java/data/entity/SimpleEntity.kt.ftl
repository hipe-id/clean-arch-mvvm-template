package ${packageName}

import ${packageName}.entity.${entityName}

data class ${entityName}(private val id: Int) {
    fun to${modelName}() = ${modelName}(id)
}
