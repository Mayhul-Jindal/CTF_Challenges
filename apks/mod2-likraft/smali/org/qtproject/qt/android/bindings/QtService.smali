.class public Lorg/qtproject/qt/android/bindings/QtService;
.super Landroid/app/Service;
.source "QtService.java"


# instance fields
.field m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/bindings/QtServiceLoader;-><init>(Lorg/qtproject/qt/android/bindings/QtService;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/bindings/QtService;->m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    return-void
.end method


# virtual methods
.method public loadApplication(Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 1

    .line 162
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtServiceDelegate;->loadApplication(Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 78
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object p1

    .line 79
    iget-boolean v0, p1, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p1, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 89
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    invoke-virtual {p0}, Lorg/qtproject/qt/android/bindings/QtService;->onCreateHook()V

    return-void
.end method

.method protected onCreateHook()V
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/qtproject/qt/android/bindings/QtService;->m_loader:Lorg/qtproject/qt/android/bindings/QtServiceLoader;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/bindings/QtServiceLoader;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 71
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 110
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 111
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 124
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 148
    invoke-static {v0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    move-result-object v0

    .line 149
    iget-boolean v1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    if-eqz v1, :cond_0

    .line 150
    iget-object p1, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 152
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public startApplication()Z
    .locals 1

    .line 167
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceDelegate;->startApplication()Z

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public super_onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public super_onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public super_onTrimMemory(I)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method public super_onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
