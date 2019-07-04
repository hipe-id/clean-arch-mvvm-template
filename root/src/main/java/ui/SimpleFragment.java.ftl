package ${packageName}.ui;

import android.os.Bundle;
import android.view.View;

import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

public class ${fragmentName} extends Fragment {

    // TODO: Implement by lazy/DI <#if generateViewModel>ViewModel<#else>Presenter</#if>

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // TODO: Init or setup view, <#if generateViewModel>viewmodel<#else>presenter</#if> related, etc anything to setup here
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        // TODO: Init or setup view, <#if generateViewModel>viewmodel<#else>presenter</#if> related, etc anything to setup here
    }
}