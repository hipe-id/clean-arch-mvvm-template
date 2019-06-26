package ${packageName};

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import butterknife.ButterKnife;

public class ${activityClass}Fragment extends Fragment implements ${activityClass}Contract.View {

    public static ${activityClass}Fragment newInstance() {
        return new ${activityClass}Fragment();
    }
}
