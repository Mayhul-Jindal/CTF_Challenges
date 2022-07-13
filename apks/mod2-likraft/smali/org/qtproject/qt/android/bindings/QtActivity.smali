.class public Lorg/qtproject/qt/android/bindings/QtActivity;
.super Landroid/app/Activity;
.source "QtActivity.java"


# static fields
.field public static final EXTRA_SOURCE_INFO:Ljava/lang/String; = "org.qtproject.qt.android.sourceInfo"


# instance fields
.field public APPLICATION_PARAMETERS:Ljava/lang/String;

.field public ENVIRONMENT_VARIABLES:Ljava/lang/String;

.field public QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

.field public QT_ANDROID_THEMES:[Ljava/lang/String;

.field private m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    const-string v1, "QT_USE_ANDROID_NATIVE_DIALOGS=1"

    .line 75
    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;-><init>(Lorg/qtproject/qt/android/bindings/QtActivity;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    const-string v0, "Theme_Holo_Light"

    .line 100
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    return-void
.end method

.method private addReferrer(Landroid/content/Intent;)V
    .locals 4

    .line 268
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "org.qtproject.qt.android.sourceInfo"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android-app://"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public bringChildToBack(I)V
    .locals 1

    .line 1010
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->bringChildToBack(I)V

    return-void
.end method

.method public bringChildToFront(I)V
    .locals 1

    .line 1015
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->bringChildToFront(I)V

    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1020
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->closeContextMenu()V

    return-void
.end method

.method public createSurface(IZIIIII)V
    .locals 8

    .line 1025
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate;->createSurface(IZIIIII)V

    return-void
.end method

.method public destroySurface(I)V
    .locals 1

    .line 1030
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->destroySurface(I)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 974
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 975
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 977
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 113
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 877
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 880
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 127
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 141
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 155
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 1035
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v0

    return v0
.end method

.method public hideSoftwareKeyboard()V
    .locals 1

    .line 1040
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    return-void
.end method

.method public hideSplashScreen()V
    .locals 1

    .line 1045
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    return-void
.end method

.method public hideSplashScreen(I)V
    .locals 1

    .line 1050
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    return-void
.end method

.method public initializeAccessibility()V
    .locals 1

    .line 1055
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->initializeAccessibility()V

    return-void
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .locals 7

    .line 1060
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->insertNativeView(ILandroid/view/View;IIII)V

    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 1158
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 1

    .line 1065
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtActivityDelegate;->loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public notifyAccessibilityLocationChange()V
    .locals 1

    .line 1138
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyAccessibilityLocationChange()V

    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 1148
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyObjectFocus(I)V

    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 1143
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyObjectHide(II)V

    return-void
.end method

.method public notifyQtAndroidPluginRunning(Z)V
    .locals 1

    .line 1163
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyQtAndroidPluginRunning(Z)V

    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 1153
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 891
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 892
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 903
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 904
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 170
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 185
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 915
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 916
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 794
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 795
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 806
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 807
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 198
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 210
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 222
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 234
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 235
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 249
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onCreateHook(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->addReferrer(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 291
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 303
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 304
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 305
    iget-object v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 307
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 319
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 320
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 322
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 847
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 848
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 849
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 851
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateHook(Landroid/os/Bundle;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->APPLICATION_PARAMETERS:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_THEMES:[Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    iput-object v1, v0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivity;->m_loader:Lorg/qtproject/qt/android/bindings/QtActivityLoader;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 333
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 334
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 337
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 349
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 350
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 365
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 366
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 368
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1070
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 379
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 380
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 383
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 927
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 928
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 929
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 931
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 394
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 395
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 398
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 410
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 818
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 819
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 988
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 989
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 991
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 418
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 419
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 421
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 830
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 831
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 833
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 3

    .line 433
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 436
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 942
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 945
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 447
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 450
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 461
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 469
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 470
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 471
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 473
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 485
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 486
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 488
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 499
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->addReferrer(Landroid/content/Intent;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 500
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 512
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 513
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 514
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 516
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 527
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 540
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 551
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 552
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 559
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 560
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 568
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 576
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 863
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 587
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 588
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 589
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 591
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 602
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 603
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 604
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 606
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1002
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1003
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 617
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 618
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 625
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 626
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 638
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 645
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 646
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 647
    iget-object v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    return-object v0

    .line 649
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 660
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 673
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 674
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 675
    iget-object v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 677
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .line 688
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 689
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 696
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 697
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1075
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->onTerminate()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 704
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 705
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 716
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 719
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 730
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 731
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 733
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUserInteraction()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 744
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 745
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 756
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 757
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 768
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 769
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 780
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 781
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 956
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 957
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 958
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/view/ActionMode;

    return-object p1

    .line 960
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public openContextMenu(IIII)V
    .locals 1

    .line 1080
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtActivityDelegate;->openContextMenu(IIII)V

    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 1085
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->resetOptionsMenu()V

    return-void
.end method

.method public resetSoftwareKeyboard()V
    .locals 1

    .line 1090
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->resetSoftwareKeyboard()V

    return-void
.end method

.method public setKeyboardVisibility(ZJ)Z
    .locals 1

    .line 1095
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    move-result p1

    return p1
.end method

.method public setSurfaceGeometry(IIIII)V
    .locals 6

    .line 1100
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSurfaceGeometry(IIIII)V

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 1

    .line 1105
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSystemUiVisibility(I)V

    return-void
.end method

.method public showSoftwareKeyboard(IIIIII)V
    .locals 7

    .line 1112
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->showSoftwareKeyboard(IIIIII)V

    return-void
.end method

.method public startApplication()Z
    .locals 1

    .line 1117
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->startApplication()Z

    move-result v0

    return v0
.end method

.method public super_dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 981
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 884
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public super_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 896
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public super_onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 908
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public super_onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public super_onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public super_onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 920
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public super_onAttachedToWindow()V
    .locals 0

    .line 799
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    return-void
.end method

.method public super_onBackPressed()V
    .locals 0

    .line 811
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public super_onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public super_onContentChanged()V
    .locals 0

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    return-void
.end method

.method public super_onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public super_onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public super_onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public super_onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public super_onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public super_onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 855
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public super_onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public super_onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 356
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public super_onCreatePanelView(I)Landroid/view/View;
    .locals 0

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public super_onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 0

    .line 387
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result p1

    return p1
.end method

.method public super_onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 935
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public super_onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public super_onDetachedFromWindow()V
    .locals 0

    .line 823
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 995
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 425
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 837
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 440
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 949
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 454
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    .line 477
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public super_onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 492
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public super_onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public super_onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 520
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public super_onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 532
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public super_onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 544
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    .line 580
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method public super_onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .line 867
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public super_onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 595
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public super_onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 610
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public super_onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 630
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public super_onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 653
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public super_onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 665
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public super_onSearchRequested()Z
    .locals 1

    .line 681
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public super_onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 709
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public super_onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 723
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 737
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public super_onUserInteraction()V
    .locals 0

    .line 749
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public super_onUserLeaveHint()V
    .locals 0

    .line 761
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public super_onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 773
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public super_onWindowFocusChanged(Z)V
    .locals 0

    .line 785
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public super_onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 964
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateFullScreen()V
    .locals 1

    .line 1122
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    return-void
.end method

.method public updateHandles(IIIIIIIIZ)V
    .locals 10

    .line 1128
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateHandles(IIIIIIIIZ)V

    return-void
.end method

.method public updateSelection(IIII)V
    .locals 1

    .line 1133
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateSelection(IIII)V

    return-void
.end method
