.class public Lorg/qtproject/qt/android/bindings/QtApplication;
.super Landroid/app/Application;
.source "QtApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    }
.end annotation


# static fields
.field public static final QtTAG:Ljava/lang/String; = "Qt"

.field private static activityClassName:Ljava/lang/String;

.field public static dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyEvent:Ljava/lang/reflect/Method;

.field public static dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

.field public static dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

.field public static dispatchTouchEvent:Ljava/lang/reflect/Method;

.field public static dispatchTrackballEvent:Ljava/lang/reflect/Method;

.field public static m_delegateMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static m_delegateObject:Ljava/lang/Object;

.field public static onActivityResult:Ljava/lang/reflect/Method;

.field public static onCreate:Ljava/lang/reflect/Method;

.field public static onGenericMotionEvent:Ljava/lang/reflect/Method;

.field public static onKeyDown:Ljava/lang/reflect/Method;

.field public static onKeyLongPress:Ljava/lang/reflect/Method;

.field public static onKeyMultiple:Ljava/lang/reflect/Method;

.field public static onKeyShortcut:Ljava/lang/reflect/Method;

.field public static onKeyUp:Ljava/lang/reflect/Method;

.field public static onRequestPermissionsResult:Ljava/lang/reflect/Method;

.field public static onTouchEvent:Ljava/lang/reflect/Method;

.field public static onTrackballEvent:Ljava/lang/reflect/Method;

.field private static stackDeep:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 52
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchPopulateAccessibilityEvent:Ljava/lang/reflect/Method;

    .line 53
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTouchEvent:Ljava/lang/reflect/Method;

    .line 54
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchTrackballEvent:Ljava/lang/reflect/Method;

    .line 55
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyDown:Ljava/lang/reflect/Method;

    .line 56
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyMultiple:Ljava/lang/reflect/Method;

    .line 57
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyUp:Ljava/lang/reflect/Method;

    .line 58
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTouchEvent:Ljava/lang/reflect/Method;

    .line 59
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onTrackballEvent:Ljava/lang/reflect/Method;

    .line 60
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onActivityResult:Ljava/lang/reflect/Method;

    .line 61
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onCreate:Ljava/lang/reflect/Method;

    .line 62
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyLongPress:Ljava/lang/reflect/Method;

    .line 63
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchKeyShortcutEvent:Ljava/lang/reflect/Method;

    .line 64
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onKeyShortcut:Ljava/lang/reflect/Method;

    .line 65
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 66
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 67
    sput-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->onRequestPermissionsResult:Ljava/lang/reflect/Method;

    const/4 v0, -0x1

    .line 122
    sput v0, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static varargs invokeDelegate([Ljava/lang/Object;)Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;
    .locals 6

    .line 125
    new-instance v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;

    invoke-direct {v0}, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;-><init>()V

    .line 126
    sget-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-object v0

    .line 128
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 129
    sget v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    const/4 v3, -0x1

    if-ne v3, v2, :cond_2

    const/4 v2, 0x0

    .line 130
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 131
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/qtproject/qt/android/bindings/QtApplication;->activityClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    sput v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_2
    :goto_1
    sget v2, Lorg/qtproject/qt/android/bindings/QtApplication;->stackDeep:I

    if-ne v3, v2, :cond_3

    return-object v0

    .line 139
    :cond_3
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 140
    sget-object v2, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    .line 143
    :cond_4
    sget-object v2, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 144
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    array-length v4, p0

    if-ne v3, v4, :cond_5

    .line 145
    invoke-static {v2, p0}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->methodReturns:Ljava/lang/Object;

    const/4 p0, 0x1

    .line 146
    iput-boolean p0, v0, Lorg/qtproject/qt/android/bindings/QtApplication$InvokeResult;->invoked:Z

    :cond_6
    return-object v0
.end method

.method public static varargs invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 156
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setQtContextDelegate(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 71
    const-class v0, Lorg/qtproject/qt/android/bindings/QtApplication;

    sput-object p1, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/qtproject/qt/android/bindings/QtApplication;->activityClassName:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    .line 76
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "org.qtproject.qt.android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 82
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 88
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    sget-object v2, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    sget-object v2, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v3, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 97
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 99
    :try_start_1
    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 101
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_7
    return-void
.end method


# virtual methods
.method public onTerminate()V
    .locals 2

    .line 111
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    const-string v1, "onTerminate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/qtproject/qt/android/bindings/QtApplication;->m_delegateMethods:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/bindings/QtApplication;->invokeDelegateMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
