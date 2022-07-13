.class public Lorg/qtproject/qt/android/bindings/QtActivityLoader;
.super Lorg/qtproject/qt/android/bindings/QtLoader;
.source "QtActivityLoader.java"


# instance fields
.field m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/bindings/QtActivity;)V
    .locals 1

    .line 58
    const-class v0, Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/bindings/QtLoader;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Class;)V

    .line 59
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    return-void
.end method


# virtual methods
.method protected contextClassName()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 69
    const-class v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected finish()V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->finish()V

    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected loaderClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "org.qtproject.qt.android.QtActivityDelegate"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "android.R$style"

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/bindings/QtActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    .line 95
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    check-cast v1, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    .line 96
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    aget-object v8, v2, v5

    .line 97
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v1, :cond_0

    new-array v1, v7, [Ljava/lang/String;

    .line 98
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 99
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/bindings/QtActivity;->setTheme(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_2
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/bindings/QtActivity;->requestWindowFeature(I)Z

    .line 117
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_displayDensity:I

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tQT_ANDROID_THEME="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/\tQT_ANDROID_THEME_DISPLAY_DPI="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_displayDensity:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    .line 128
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "android.app.background_running"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 129
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=0\t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    goto :goto_3

    .line 132
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED=1\t"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 135
    :goto_3
    invoke-virtual {p0, v7}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->startApp(Z)V

    :cond_4
    return-void

    :catch_1
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->finish()V

    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtActivityLoader;->m_activity:Lorg/qtproject/qt/android/bindings/QtActivity;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
