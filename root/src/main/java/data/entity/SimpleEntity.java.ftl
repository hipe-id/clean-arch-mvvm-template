package ${packageName}.data.entity;

import ${packageName}.domain.model.${modelName};

// TODO: Add transformation into another entity or model here as well
public class ${entityName} {

    private Integer id;

    public ${modelName} to${modelName}() {
        return new ${modelName}(id);
    }
}
