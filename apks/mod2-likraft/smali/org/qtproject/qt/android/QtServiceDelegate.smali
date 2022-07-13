.class public Lorg/qtproject/qt/android/QtServiceDelegate;
.super Ljava/lang/Object;
.source "QtServiceDelegate.java"


# static fields
.field private static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field private static final APP_DISPLAY_METRIC_SCREEN_DENSITY_KEY:Ljava/lang/String; = "display.screen.density"

.field private static final APP_DISPLAY_METRIC_SCREEN_DESKTOP_KEY:Ljava/lang/String; = "display.screen.desktop"

.field private static final APP_DISPLAY_METRIC_SCREEN_XDPI_KEY:Ljava/lang/String; = "display.screen.dpi.x"

.field private static final APP_DISPLAY_METRIC_SCREEN_YDPI_KEY:Ljava/lang/String; = "display.screen.dpi.y"

.field private static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field private static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field private static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field private static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field private static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field private static m_applicationParameters:Ljava/lang/String;


# instance fields
.field private m_mainLib:Ljava/lang/String;

.field private m_service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_mainLib:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public loadApplication(Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "native.libraries"

    .line 109
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const-string v4, "bundled.libraries"

    .line 110
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_5

    .line 114
    :cond_0
    iput-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    .line 115
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;Lorg/qtproject/qt/android/QtServiceDelegate;)V

    .line 116
    invoke-static/range {p2 .. p2}, Lorg/qtproject/qt/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/16 v12, 0xa

    const-wide/high16 v13, 0x405e000000000000L    # 120.0

    const-wide/high16 v15, 0x405e000000000000L    # 120.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    const/high16 v21, 0x42700000    # 60.0f

    .line 118
    invoke-static/range {v7 .. v21}, Lorg/qtproject/qt/android/QtNative;->setApplicationDisplayMetrics(IIIIIIDDDDF)V

    const-string v0, "static.init.classes"

    .line 120
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 122
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    array-length v8, v6

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v0, v6, v9

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v10, p2

    goto :goto_2

    :cond_1
    move-object/from16 v10, p2

    .line 126
    :try_start_0
    invoke-virtual {v10, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 127
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v13, "setService"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    .line 129
    const-class v16, Landroid/app/Service;

    aput-object v16, v15, v5

    const-class v16, Ljava/lang/Object;

    aput-object v16, v15, v7

    invoke-virtual {v11, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    new-array v14, v14, [Ljava/lang/Object;

    .line 130
    iget-object v15, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    aput-object v15, v14, v5

    aput-object v1, v14, v7

    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v13, "Qt JAVA"

    .line 132
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement setService method"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    const-string v0, "setContext"

    new-array v13, v7, [Ljava/lang/Class;

    .line 138
    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v5

    invoke-virtual {v11, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v7, [Ljava/lang/Object;

    .line 139
    iget-object v13, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    aput-object v13, v11, v5

    invoke-virtual {v0, v12, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 141
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->loadQtLibraries(Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    iget-object v3, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "main.library"

    .line 152
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_mainLib:Ljava/lang/String;

    const-string v0, "environment.variables"

    .line 154
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariables(Ljava/lang/String;)V

    const-string v0, "QT_ANDROID_FONTS_MONOSPACE"

    const-string v4, "Droid Sans Mono;Droid Sans;Droid Sans Fallback"

    .line 155
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QT_ANDROID_FONTS_SERIF"

    const-string v4, "Droid Serif"

    .line 157
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HOME"

    invoke-static {v4, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TMPDIR"

    invoke-static {v4, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    const-string v6, "QT_ANDROID_FONTS"

    if-ge v0, v4, :cond_3

    const-string v0, "Droid Sans;Droid Sans Fallback"

    .line 162
    invoke-static {v6, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v0, "Roboto;Droid Sans;Droid Sans Fallback"

    .line 164
    invoke-static {v6, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "application.parameters"

    .line 167
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_applicationParameters:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v0, ""

    .line 170
    sput-object v0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_applicationParameters:Ljava/lang/String;

    .line 172
    :goto_4
    iget-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_mainLib:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadMainLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtServiceDelegate;->m_mainLib:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v5, v7

    :cond_5
    :goto_5
    return v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 1

    .line 191
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->quitQtCoreApplication()V

    .line 192
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    const/4 v0, 0x0

    .line 193
    invoke-static {v0, v0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;Lorg/qtproject/qt/android/QtServiceDelegate;)V

    .line 194
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public startApplication()Z
    .locals 2

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_service:Landroid/app/Service;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/content/Context;)Ljava/lang/String;

    .line 181
    sget-object v0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_applicationParameters:Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtServiceDelegate;->m_mainLib:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
