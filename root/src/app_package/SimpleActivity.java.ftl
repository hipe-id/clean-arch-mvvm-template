package ${packageName};

public class ${activityClass}Activity extends ${SUPERCLASS} {

    private ${activityClass}Contract.Presenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
<#if generateLayout>
        setContentView(R.layout.${layoutName});
</#if>

        ${activityClass}Fragment view = (${activityClass}Fragment) getSupportFragmentManager()
                .findFragmentById(R.id.layoutFragment);

        if (view == null) {
            view = ${activityClass}Fragment.newInstance();

            ActivityUtils.addFragmentToActivity(getSupportFragmentManager(),
                    view, R.id.layoutFragment);
        }

        mPresenter = new ${activityClass}Presenter(view);
<#include "../../../../common/jni_code_usage.kt.ftl">
    }
<#include "../../../../common/jni_code_snippet.kt.ftl">
}