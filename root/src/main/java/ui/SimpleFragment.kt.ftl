package ${packageName}.ui

import android.os.Bundle
import android.view.View

import androidx.fragment.app.Fragment

class ${fragmentName} : Fragment() {

    // TODO: Implement by lazy/DI <#if generateViewModel>ViewModel<#else>Presenter</#if>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // TODO: Init or setup view, <#if generateViewModel>viewmodel<#else>presenter</#if> related, etc anything to setup here
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        // TODO: Init or setup view, <#if generateViewModel>viewmodel<#else>presenter</#if> related, etc anything to setup here
    }
}