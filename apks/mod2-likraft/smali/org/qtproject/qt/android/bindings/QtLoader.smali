.class public abstract Lorg/qtproject/qt/android/bindings/QtLoader;
.super Ljava/lang/Object;
.source "QtLoader.java"


# static fields
.field public static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field public static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field public static final DEX_PATH_KEY:Ljava/lang/String; = "dex.path"

.field public static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "error.code"

.field public static final ERROR_MESSAGE_KEY:Ljava/lang/String; = "error.message"

.field public static final EXTRACT_STYLE_KEY:Ljava/lang/String; = "extract.android.style"

.field private static final EXTRACT_STYLE_MINIMAL_KEY:Ljava/lang/String; = "extract.android.style.option"

.field public static final LIB_PATH_KEY:Ljava/lang/String; = "lib.path"

.field public static final LOADER_CLASS_NAME_KEY:Ljava/lang/String; = "loader.class.name"

.field public static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field public static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field public static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field public static final SYSTEM_LIB_PATH:Ljava/lang/String; = "/system/lib/"

.field private static m_fileOutputStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public APPLICATION_PARAMETERS:Ljava/lang/String;

.field public ENVIRONMENT_VARIABLES:Ljava/lang/String;

.field public QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

.field public QT_ANDROID_THEMES:[Ljava/lang/String;

.field public SYSTEM_APP_PATHS:[Ljava/lang/String;

.field private m_context:Landroid/content/ContextWrapper;

.field protected m_contextInfo:Landroid/content/pm/ComponentInfo;

.field private m_delegateClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public m_displayDensity:I

.field public m_qtLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAbi:Ljava/lang/String;

.field private final supportedAbis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_fileOutputStreams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/content/ContextWrapper;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContextWrapper;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/system/priv-app/"

    const-string v1, "/system/app/"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->SYSTEM_APP_PATHS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    const-string v1, "QT_USE_ANDROID_NATIVE_DIALOGS=1"

    .line 86
    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->QT_ANDROID_THEMES:[Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->QT_ANDROID_DEFAULT_THEME:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_displayDensity:I

    .line 141
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->supportedAbis:Ljava/util/List;

    .line 142
    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    .line 118
    iput-object p2, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_delegateClass:Ljava/lang/Class;

    return-void
.end method

.method private loadApplication(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "lib.path"

    const-string v1, "android.app.lib_name"

    .line 175
    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    :try_start_0
    const-string v5, "error.code"

    .line 178
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "error.message"

    .line 182
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/qtproject/qt/android/bindings/QtLoader$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/bindings/QtLoader$1;-><init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string v5, "bundled_libs"

    const-string v6, "array"

    .line 195
    invoke-virtual {v2, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 196
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    iget-object v5, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "main.library"

    .line 202
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "bundled.libraries"

    .line 205
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 208
    new-instance v1, Ldalvik/system/DexClassLoader;

    const-string v5, "dex.path"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    const-string v7, "outdex"

    const/4 v8, 0x0

    .line 209
    invoke-virtual {v6, v7, v8}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    .line 211
    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v5, v6, v0, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v0, "loader.class.name"

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "loadApplication"

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Class;

    .line 216
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->contextClassName()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v9, v8

    const-class v10, Ljava/lang/ClassLoader;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-class v10, Landroid/os/Bundle;

    const/4 v12, 0x2

    aput-object v10, v9, v12

    .line 215
    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 219
    iget-object v7, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    aput-object v7, v6, v8

    aput-object v1, v6, v11

    aput-object p1, v6, v12

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz p1, :cond_4

    .line 222
    :try_start_1
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_delegateClass:Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->setQtContextDelegate(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v5, "startApplication"

    new-array v6, v8, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v5, v8, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 226
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 229
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const-string v0, "fatal_error_msg"

    const-string v1, "string"

    .line 231
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/bindings/QtLoader$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/bindings/QtLoader$2;-><init>(Lorg/qtproject/qt/android/bindings/QtLoader;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 241
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method private prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/4 v5, 0x2

    const-string v6, ";"

    .line 148
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 149
    iget-object v5, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    if-eqz v5, :cond_0

    aget-object v6, v4, v2

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 152
    aget-object v5, v4, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    aget-object v5, v4, v2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 160
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 163
    :cond_4
    iget-object p1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->supportedAbis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    iput-object v1, p0, Lorg/qtproject/qt/android/bindings/QtLoader;->preferredAbi:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1

    .line 169
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method


# virtual methods
.method protected abstract contextClassName()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    return-void
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Qt"

    return-object v0
.end method

.method protected abstract loaderClassName()Ljava/lang/String;
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public startApp(Z)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "android.app.arguments"

    const-string v2, "android.app.extract_android_style"

    const-string v3, "android.app.system_libs_prefix"

    const-string v4, "array"

    const-string v5, "string"

    const-string v6, "Qt"

    .line 248
    :try_start_0
    iget-object v7, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 249
    iget-object v8, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "qt_libs"

    .line 250
    invoke-virtual {v7, v9, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 251
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    const-string v9, "use_local_qt_libs"

    .line 253
    invoke-virtual {v7, v9, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 254
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 257
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v11, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 261
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 263
    iget-object v11, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->SYSTEM_APP_PATHS:[Ljava/lang/String;

    array-length v14, v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v15, v14, :cond_2

    aget-object v13, v11, v15

    .line 264
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v16, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    :cond_2
    :goto_1
    const-string v10, " does not exist or is empty."

    const-string v11, "/"

    if-eqz v16, :cond_5

    :try_start_1
    const-string v13, "/system/lib/"

    .line 274
    iget-object v14, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v14, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 275
    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_3
    const-string v3, "It looks like app deployed as system app. It may be necessary to specify path to system lib directory using android.app.system_libs_prefix metadata variable in your AndroidManifest.xml"

    .line 277
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Using /system/lib/ as default path"

    .line 280
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_4

    goto :goto_3

    .line 286
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "System library directory "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    .line 291
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 292
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_6

    move-object v3, v13

    goto :goto_4

    .line 297
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Native library directory "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_4
    if-eqz v16, :cond_8

    if-eqz v13, :cond_7

    goto :goto_5

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_8
    :goto_5
    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "lib"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    iget-object v14, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_qtLibs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 310
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".so"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v10, "bundle_local_qt_libs"

    .line 313
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 314
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, ":"

    const/4 v14, 0x1

    if-ne v10, v14, :cond_d

    :try_start_2
    const-string v10, "load_local_libs"

    .line 317
    invoke-virtual {v7, v10, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 318
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/bindings/QtLoader;->prefferedAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 319
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 320
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v14, v10

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_a

    move-object/from16 v17, v4

    aget-object v4, v10, v15

    .line 321
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v18, v10

    .line 322
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v18, v10

    :goto_8
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v17

    move-object/from16 v10, v18

    goto :goto_7

    :cond_c
    if-eqz v3, :cond_d

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tQT_BUNDLED_LIBS_PATH="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 329
    :cond_d
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "error.code"

    const/4 v10, 0x0

    .line 330
    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "dex.path"

    .line 331
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "loader.class.name"

    .line 332
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->loaderClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "static_init_classes"

    .line 334
    invoke-virtual {v7, v4, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "static.init.classes"

    .line 335
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "native.libraries"

    .line 338
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/qt-reserved-files/android-style/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_displayDensity:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 345
    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "minimal"

    const-string v8, "full"

    const-string v9, "none"

    const-string v10, "default"

    if-eqz v5, :cond_e

    .line 346
    :try_start_3
    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid extract_android_style option \""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", defaulting to \"default\""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object v2, v10

    .line 356
    :cond_f
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 357
    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_context:Landroid/content/ContextWrapper;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1c

    if-ge v5, v10, :cond_10

    .line 358
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v10, :cond_10

    const-string v2, "extract_android_style option set to \"none\" when targetSdkVersion is less then 28"

    .line 359
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 364
    :cond_10
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "extract.android.style"

    .line 365
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extract.android.style.option"

    .line 366
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    :cond_11
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tQT_USE_ANDROID_NATIVE_STYLE=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    .line 372
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\tANDROID_STYLE_PATH="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->ENVIRONMENT_VARIABLES:Ljava/lang/String;

    const-string v4, "environment.variables"

    .line 374
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->APPLICATION_PARAMETERS:Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object v12, v2

    goto :goto_9

    :cond_13
    const/4 v12, 0x0

    .line 380
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lorg/qtproject/qt/android/bindings/QtLoader;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x9

    if-eqz v2, :cond_15

    const-string v5, "applicationArguments"

    .line 382
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    if-nez v12, :cond_14

    move-object v12, v2

    goto :goto_a

    .line 387
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 390
    :cond_15
    :goto_a
    iget-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 391
    iget-object v2, v1, Lorg/qtproject/qt/android/bindings/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v12, :cond_16

    move-object v12, v0

    goto :goto_b

    .line 395
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_17
    :goto_b
    if-eqz v12, :cond_18

    const-string v0, "application.parameters"

    const/16 v2, 0x20

    .line 399
    invoke-virtual {v12, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_18
    invoke-direct {v1, v3}, Lorg/qtproject/qt/android/bindings/QtLoader;->loadApplication(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Can\'t create main activity"

    .line 405
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    return-void
.end method
