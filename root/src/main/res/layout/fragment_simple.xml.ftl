<ConstraintLayout
        xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools"
        android:id="@+id/main_content"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    <!--  TODO: You must include ConstraintLayout dependency first -->
    <!--  TODO: Change Ids  -->
    <!--  TODO: Update your layout  -->

    <TextView
            android:id="@+id/tvSimple"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginStart="8dp"
            android:layout_marginTop="18dp"
            android:layout_marginEnd="8dp"
            android:text="Hello, world!"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintTop_toTopOf="parent" />

</ConstraintLayout>