.class public Lorg/qtproject/qt/android/bindings/QtServiceLoader;
.super Lorg/qtproject/qt/android/bindings/QtLoader;
.source "QtServiceLoader.java"


# instance fields
.field m_service:Lorg/qtproject/qt/android/bindings/QtService;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/bindings/QtService;)V
    .locals 1

    .line 46
    const-class v0, Lorg/qtproject/qt/android/bindings/QtService;

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/bindings/QtLoader;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Class;)V

    .line 47
    iput-object p1, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_service:Lorg/qtproject/qt/android/bindings/QtService;

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

    .line 78
    const-class v0, Landroid/app/Service;

    return-object v0
.end method

.method protected finish()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_service:Lorg/qtproject/qt/android/bindings/QtService;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtService;->stopSelf()V

    return-void
.end method

.method protected loaderClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "org.qtproject.qt.android.QtServiceDelegate"

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_service:Lorg/qtproject/qt/android/bindings/QtService;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_service:Lorg/qtproject/qt/android/bindings/QtService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 61
    sget-object v2, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->startApp(Z)V

    return-void

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->m_service:Lorg/qtproject/qt/android/bindings/QtService;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtService;->stopSelf()V

    return-void
.end method
