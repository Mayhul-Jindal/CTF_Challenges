.class public Lorg/qtproject/qt/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# static fields
.field private static final INVALID_OR_NULL_URI_ERROR_MESSAGE:Ljava/lang/String; = "Received invalid/null Uri"

.field public static final IdCursorHandle:I = 0x1

.field public static final IdLeftHandle:I = 0x2

.field public static final IdRightHandle:I = 0x3

.field private static final KEYBOARD_HEIGHT_THRESHOLD:I = 0x64

.field public static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Landroid/app/Activity;

.field private static m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field private static m_activityPaused:Z

.field private static m_cachedUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static m_checkSelfPermissionMethod:Ljava/lang/reflect/Method;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static m_clipboardManager:Landroid/content/ClipboardManager;

.field private static m_displayMetricsAvailableHeightPixels:I

.field private static m_displayMetricsAvailableLeftPixels:I

.field private static m_displayMetricsAvailableTopPixels:I

.field private static m_displayMetricsAvailableWidthPixels:I

.field private static m_displayMetricsDensity:D

.field private static m_displayMetricsRefreshRate:F

.field private static m_displayMetricsScaledDensity:D

.field private static m_displayMetricsScreenHeightPixels:I

.field private static m_displayMetricsScreenWidthPixels:I

.field private static m_displayMetricsXDpi:D

.field private static m_displayMetricsYDpi:D

.field private static m_isKeyboardHiding:Z

.field private static m_knownDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_lostActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static m_mainActivityMutex:Ljava/lang/Object;

.field private static final m_moveThreshold:I

.field private static m_oldx:I

.field private static m_oldy:I

.field public static m_qtThread:Lorg/qtproject/qt/android/QtThread;

.field private static m_service:Landroid/app/Service;

.field private static m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

.field private static m_started:Z

.field private static m_tabletEventSupported:Ljava/lang/Boolean;

.field private static m_usePrimaryClip:Z

.field private static final runPendingCppRunnablesRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    .line 100
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 101
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 102
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 103
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    .line 104
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    .line 105
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    .line 106
    sput v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    const/high16 v1, 0x42700000    # 60.0f

    .line 107
    sput v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    const-wide/16 v1, 0x0

    .line 108
    sput-wide v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    .line 109
    sput-wide v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 110
    sput-wide v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 111
    sput-wide v1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    const/4 v1, 0x0

    .line 114
    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    .line 115
    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_checkSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 116
    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    .line 117
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    .line 118
    new-instance v0, Lorg/qtproject/qt/android/QtThread;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtThread;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_knownDirs:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lorg/qtproject/qt/android/QtNative$1;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$1;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    .line 132
    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    return v0
.end method

.method static synthetic access$1000()F
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    return v0
.end method

.method static synthetic access$1100()Landroid/app/Activity;
    .locals 1

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/app/Service;
    .locals 1

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$1300()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 1

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/content/ClipboardManager;
    .locals 1

    .line 88
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/content/ClipboardManager;)Landroid/content/ClipboardManager;
    .locals 0

    .line 88
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 88
    sget v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    return v0
.end method

.method static synthetic access$600()D
    .locals 2

    .line 88
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    return-wide v0
.end method

.method static synthetic access$700()D
    .locals 2

    .line 88
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    return-wide v0
.end method

.method static synthetic access$800()D
    .locals 2

    .line 88
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    return-wide v0
.end method

.method static synthetic access$900()D
    .locals 2

    .line 88
    sget-wide v0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    return-wide v0
.end method

.method public static activity()Landroid/app/Activity;
    .locals 2

    .line 145
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static activityDelegate()Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 2

    .line 160
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static bringChildToBack(I)V
    .locals 1

    .line 1301
    new-instance v0, Lorg/qtproject/qt/android/QtNative$28;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$28;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static bringChildToFront(I)V
    .locals 1

    .line 1290
    new-instance v0, Lorg/qtproject/qt/android/QtNative$27;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$27;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static checkFileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 333
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "r"

    .line 335
    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const-string v0, "Qt JAVA"

    const/4 v7, 0x0

    if-nez v2, :cond_1

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Received invalid/null Uri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 340
    :cond_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 346
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v7, 0x1

    .line 349
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v7

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 353
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public static checkIfDir(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    .line 366
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 367
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_knownDirs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "r"

    .line 370
    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    const-string v1, "Qt JAVA"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Received invalid/null Uri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 376
    :cond_2
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 377
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 383
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "tree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 385
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 387
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 386
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    const-string p0, "mime_type"

    .line 390
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 394
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    new-instance v0, Ljava/lang/String;

    const-string v3, "vnd.android.document/directory"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_knownDirs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move v0, v2

    .line 400
    :cond_7
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :cond_8
    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 404
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static checkIfWritable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "w"

    .line 360
    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkSelfPermission(Ljava/lang/String;)I
    .locals 3

    .line 863
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 865
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 866
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 867
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 135
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static clearClipData()V
    .locals 2

    .line 1048
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    :cond_0
    const/4 v0, 0x0

    .line 1050
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    return-void
.end method

.method private static closeContextMenu()V
    .locals 1

    .line 1197
    new-instance v0, Lorg/qtproject/qt/android/QtNative$21;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$21;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static createSurface(IZIIIII)V
    .locals 9

    .line 1257
    new-instance v8, Lorg/qtproject/qt/android/QtNative$24;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtNative$24;-><init>(IZIIIII)V

    invoke-static {v8}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static destroySurface(I)V
    .locals 1

    .line 1312
    new-instance v0, Lorg/qtproject/qt/android/QtNative$29;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$29;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public static native dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public static native fillContextMenu(Landroid/view/Menu;)V
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .locals 7

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 724
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_3

    .line 726
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 727
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    :goto_0
    if-ge v1, v0, :cond_2

    .line 729
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_1

    .line 730
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v3

    :cond_4
    if-eqz v0, :cond_8

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_5

    goto :goto_3

    :cond_5
    if-eq v0, v3, :cond_7

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    const/4 p0, 0x3

    return p0

    :cond_8
    :goto_3
    return v1
.end method

.method private static getClipboardHtml()Ljava/lang/String;
    .locals 3

    .line 1132
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    .line 1134
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1135
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1136
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    .line 1139
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static getClipboardText()Ljava/lang/String;
    .locals 3

    .line 1076
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    .line 1078
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1079
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    .line 1083
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private static getClipboardUris()[Ljava/lang/String;
    .locals 4

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    .line 1172
    :goto_0
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1173
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1174
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get clipboard data"

    .line 1177
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 855
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 857
    :cond_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    return-object v0
.end method

.method private static getCurrentMethodNameLog()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSSLCertificates()[[B
    .locals 9

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 1234
    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1236
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1237
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 1238
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 1240
    invoke-interface {v5}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 1241
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    .line 1242
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get certificates"

    .line 1247
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    .line 1251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method private static getSelectHandleWidth()I
    .locals 1

    .line 888
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSelectHandleWidth()I

    move-result v0

    return v0
.end method

.method public static getSize(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    .line 302
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "r"

    .line 304
    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const-string v0, "Qt JAVA"

    const-wide/16 v7, -0x1

    if-nez v2, :cond_1

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Received invalid/null Uri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7

    .line 309
    :cond_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "_size"

    .line 315
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 319
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 320
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v7, v1

    .line 321
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-wide v7

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 325
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, ","

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 186
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 200
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 203
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 204
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v3

    const-string v4, "r"

    .line 206
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v3

    .line 209
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Qt JAVA"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_1
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static native handleLocationChanged(III)V
.end method

.method public static native handleOrientationChanged(II)V
.end method

.method public static native handleRefreshRateChanged(F)V
.end method

.method public static hasClipboardHtml()Z
    .locals 3

    .line 1119
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/html"

    .line 1121
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    .line 1124
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasClipboardText()Z
    .locals 3

    .line 1063
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/*"

    .line 1065
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    .line 1068
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasClipboardUri()Z
    .locals 3

    .line 1156
    :try_start_0
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/uri-list"

    .line 1158
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Qt JAVA"

    const-string v2, "Failed to get clipboard data"

    .line 1161
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hideSoftwareKeyboard()V
    .locals 1

    const/4 v0, 0x1

    .line 938
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 939
    new-instance v0, Lorg/qtproject/qt/android/QtNative$13;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$13;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hideSplashScreen(I)V
    .locals 1

    .line 1333
    new-instance v0, Lorg/qtproject/qt/android/QtNative$31;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$31;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static initializeAccessibility()V
    .locals 1

    .line 1323
    new-instance v0, Lorg/qtproject/qt/android/QtNative$30;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$30;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static insertNativeView(ILandroid/view/View;IIII)V
    .locals 8

    .line 1268
    new-instance v7, Lorg/qtproject/qt/android/QtNative$25;

    move-object v0, v7

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtNative$25;-><init>(ILandroid/view/View;IIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isSoftwareKeyboardVisible()Z
    .locals 1

    .line 963
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native isTabletEventSupported()Z
.end method

.method public static native keyDown(IIIZ)V
.end method

.method public static native keyUp(IIIZ)V
.end method

.method public static native keyboardGeometryChanged(IIII)V
.end method

.method public static native keyboardVisibilityChanged(Z)V
.end method

.method public static keyboardVisibilityUpdated(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1344
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_isKeyboardHiding:Z

    .line 1345
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->keyboardVisibilityChanged(Z)V

    return-void
.end method

.method private static listAssetContent(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1353
    array-length v2, v1

    if-lez v2, :cond_2

    .line 1354
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1356
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "/"

    if-lez v5, :cond_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    move-object v5, v4

    :goto_1
    invoke-virtual {p0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1357
    array-length v5, v5

    if-lez v5, :cond_1

    .line 1358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1359
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 1361
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1366
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1368
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static listContentsFromTreeUri(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string v0, "/"

    .line 411
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Qt JAVA"

    if-nez v1, :cond_0

    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Received invalid/null Uri"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 419
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 418
    invoke-static {v1, p0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 421
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-static {p0, v5}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_0
    const-string p0, "document_id"

    const-string v6, "_display_name"

    const-string v7, "mime_type"

    .line 425
    filled-new-array {p0, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 430
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 431
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 432
    sget-object v5, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 433
    sget-object v5, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 435
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 434
    invoke-static {v1, v7}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 433
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 438
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.document/directory"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    sget-object v5, Lorg/qtproject/qt/android/QtNative;->m_knownDirs:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed query: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 477
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v1, Lorg/qtproject/qt/android/QtNative$3;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/QtNative$3;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadMainLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 515
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 516
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v2, Lorg/qtproject/qt/android/QtNative$4;

    invoke-direct {v2, p0, p1, v0}, Lorg/qtproject/qt/android/QtNative$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    .line 544
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static loadQtLibraries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 452
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v1, Lorg/qtproject/qt/android/QtNative$2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtNative$2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native longPress(III)V
.end method

.method public static native mouseDown(III)V
.end method

.method public static native mouseMove(III)V
.end method

.method public static native mouseUp(III)V
.end method

.method public static native mouseWheel(IIIFF)V
.end method

.method private static notifyAccessibilityLocationChange()V
    .locals 1

    .line 968
    new-instance v0, Lorg/qtproject/qt/android/QtNative$15;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$15;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static notifyObjectFocus(I)V
    .locals 1

    .line 992
    new-instance v0, Lorg/qtproject/qt/android/QtNative$17;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$17;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static notifyObjectHide(II)V
    .locals 1

    .line 980
    new-instance v0, Lorg/qtproject/qt/android/QtNative$16;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$16;-><init>(II)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static notifyQtAndroidPluginRunning(Z)V
    .locals 1

    .line 1016
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->notifyQtAndroidPluginRunning(Z)V

    return-void
.end method

.method private static notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 1004
    new-instance v0, Lorg/qtproject/qt/android/QtNative$18;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$18;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method public static native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public static native onClipboardDataChanged()V
.end method

.method public static native onContextItemSelected(IZ)Z
.end method

.method public static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onNewIntent(Landroid/content/Intent;)V
.end method

.method public static native onOptionsItemSelected(IZ)Z
.end method

.method public static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method private static openContextMenu(IIII)V
    .locals 1

    .line 1186
    new-instance v0, Lorg/qtproject/qt/android/QtNative$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtNative$20;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openFdForContentUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 279
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 281
    invoke-static {p0, p1, p2}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const/4 p1, -0x1

    const-string v1, "Qt JAVA"

    if-nez v0, :cond_1

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 290
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 291
    invoke-virtual {p0, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 293
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return p1
.end method

.method public static openFdObjectForContentUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileDescriptor;
    .locals 0

    .line 271
    invoke-static {p0, p1, p2}, Lorg/qtproject/qt/android/QtNative;->openParcelFdForContentUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static openOptionsMenu()V
    .locals 1

    .line 1219
    new-instance v0, Lorg/qtproject/qt/android/QtNative$23;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$23;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openParcelFdForContentUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 249
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_cachedUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 251
    invoke-static {p0, p1, p2}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const/4 p1, 0x0

    const-string v1, "Qt JAVA"

    if-nez v0, :cond_1

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 259
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 260
    invoke-virtual {p0, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 262
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "r"

    .line 225
    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "Qt JAVA"

    if-nez p0, :cond_0

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 232
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    .line 233
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_1
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 241
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private static quitApp()V
    .locals 1

    .line 707
    new-instance v0, Lorg/qtproject/qt/android/QtNative$8;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$8;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native quitQtAndroidPlugin()V
.end method

.method public static native quitQtCoreApplication()V
.end method

.method private static registerClipboardManager()V
    .locals 2

    .line 1021
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1022
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1023
    new-instance v1, Lorg/qtproject/qt/android/QtNative$19;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtNative$19;-><init>(Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 1039
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static resetOptionsMenu()V
    .locals 1

    .line 1208
    new-instance v0, Lorg/qtproject/qt/android/QtNative$22;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$22;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static resetSoftwareKeyboard()V
    .locals 1

    .line 927
    new-instance v0, Lorg/qtproject/qt/android/QtNative$12;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$12;-><init>()V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runAction(Ljava/lang/Runnable;)V
    .locals 4

    .line 584
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 586
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 587
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    sget-boolean v3, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 588
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 589
    :cond_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native runPendingCppRunnables()V
.end method

.method private static runPendingCppRunnablesOnAndroidThread()V
    .locals 4

    .line 595
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 597
    sget-boolean v2, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    if-nez v2, :cond_0

    .line 598
    sget-object v2, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 600
    :cond_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 603
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 604
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 607
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 608
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 611
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 2

    .line 810
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendMouseEvent(Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 820
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return v3

    .line 845
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0xa

    .line 846
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    .line 845
    invoke-static {p1, v0, v2, v3, p0}, Lorg/qtproject/qt/android/QtNative;->mouseWheel(IIIFF)V

    goto/16 :goto_0

    .line 832
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 833
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, p0}, Lorg/qtproject/qt/android/QtNative;->mouseMove(III)V

    goto :goto_0

    .line 835
    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v2, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 836
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 837
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_6

    .line 838
    :cond_3
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1, v0, v2}, Lorg/qtproject/qt/android/QtNative;->mouseMove(III)V

    .line 839
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    .line 840
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    goto :goto_0

    .line 822
    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, v0, p0}, Lorg/qtproject/qt/android/QtNative;->mouseUp(III)V

    goto :goto_0

    .line 826
    :cond_5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1, v0, v2}, Lorg/qtproject/qt/android/QtNative;->mouseDown(III)V

    .line 827
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtNative;->m_oldx:I

    .line 828
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtNative;->m_oldy:I

    :cond_6
    :goto_0
    return v1
.end method

.method public static native sendRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 752
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 753
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isTabletEventSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    :cond_0
    const/4 v12, 0x0

    .line 755
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    if-eq v1, v13, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    move v5, v12

    goto :goto_0

    :cond_1
    move v5, v14

    goto :goto_0

    :cond_2
    move v5, v15

    .line 764
    :goto_0
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v14, :cond_3

    .line 765
    invoke-static/range {p0 .. p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    goto/16 :goto_3

    .line 766
    :cond_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_tabletEventSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    move/from16 v0, p1

    .line 767
    invoke-static/range {v0 .. v9}, Lorg/qtproject/qt/android/QtNative;->tabletEvent(IIJIIIFFF)V

    goto :goto_3

    .line 770
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/qtproject/qt/android/QtNative;->touchBegin(I)V

    move v10, v12

    .line 771
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 773
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 774
    invoke-static {v10, v0}, Lorg/qtproject/qt/android/QtNative;->getAction(ILandroid/view/MotionEvent;)I

    move-result v3

    if-nez v10, :cond_5

    move v4, v15

    goto :goto_2

    :cond_5
    move v4, v12

    .line 776
    :goto_2
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v5, v1

    .line 777
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v6, v1

    .line 778
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v7

    .line 779
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v8

    .line 780
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v9

    .line 781
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v16

    move/from16 v1, p1

    move/from16 v17, v10

    move/from16 v10, v16

    .line 772
    invoke-static/range {v1 .. v10}, Lorg/qtproject/qt/android/QtNative;->touchAdd(IIIZIIFFFF)V

    add-int/lit8 v10, v17, 0x1

    goto :goto_1

    .line 784
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v15, :cond_8

    if-eq v0, v14, :cond_7

    .line 798
    invoke-static {v11, v15}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    goto :goto_3

    .line 794
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/qtproject/qt/android/QtNative;->touchCancel(I)V

    goto :goto_3

    .line 790
    :cond_8
    invoke-static {v11, v13}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    goto :goto_3

    .line 786
    :cond_9
    invoke-static {v11, v12}, Lorg/qtproject/qt/android/QtNative;->touchEnd(II)V

    :goto_3
    return-void
.end method

.method public static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 805
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtNative;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method public static service()Landroid/app/Service;
    .locals 2

    .line 152
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static serviceDelegate()Lorg/qtproject/qt/android/QtServiceDelegate;
    .locals 2

    .line 167
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 1

    .line 549
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    :try_start_0
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    .line 551
    sput-object p1, Lorg/qtproject/qt/android/QtNative;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    .line 552
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setApplicationDisplayMetrics(IIIIIIDDDDF)V
    .locals 18

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    cmpg-double v2, p6, v0

    if-gez v2, :cond_0

    move-wide v9, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p6

    :goto_0
    cmpg-double v2, p8, v0

    if-gez v2, :cond_1

    move-wide v11, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v11, p8

    .line 673
    :goto_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    if-eqz v0, :cond_2

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move/from16 v17, p14

    .line 675
    invoke-static/range {v3 .. v17}, Lorg/qtproject/qt/android/QtNative;->setDisplayMetrics(IIIIIIDDDDF)V

    goto :goto_2

    .line 679
    :cond_2
    sput p0, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenWidthPixels:I

    .line 680
    sput p1, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScreenHeightPixels:I

    .line 681
    sput p2, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableLeftPixels:I

    .line 682
    sput p3, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableTopPixels:I

    .line 683
    sput p4, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableWidthPixels:I

    .line 684
    sput p5, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsAvailableHeightPixels:I

    .line 685
    sput-wide v9, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsXDpi:D

    .line 686
    sput-wide v11, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsYDpi:D

    .line 687
    sput-wide p10, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsScaledDensity:D

    .line 688
    sput-wide p12, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsDensity:D

    .line 689
    sput p14, Lorg/qtproject/qt/android/QtNative;->m_displayMetricsRefreshRate:F

    .line 691
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setApplicationState(I)V
    .locals 3

    .line 565
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    .line 575
    :try_start_0
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 568
    sput-boolean v1, Lorg/qtproject/qt/android/QtNative;->m_activityPaused:Z

    .line 569
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 570
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 572
    :cond_1
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_lostActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 578
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updateApplicationState(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 578
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 140
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private static setClipboardHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1110
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    .line 1111
    invoke-static {v0, p0, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    .line 1112
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method private static setClipboardText(Ljava/lang/String;)V
    .locals 1

    .line 1054
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v0, "text/plain"

    .line 1055
    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    .line 1056
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method private static setClipboardUri(Ljava/lang/String;)V
    .locals 2

    .line 1146
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    .line 1147
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1148
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "text/uri-list"

    .line 1147
    invoke-static {v0, v1, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    .line 1149
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updatePrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public static native setDisplayMetrics(IIIIIIDDDDF)V
.end method

.method public static setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 1380
    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set environment variable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Qt JAVA"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setEnvironmentVariables(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\t"

    .line 1396
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, "="

    const/4 v5, 0x2

    .line 1397
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1398
    array-length v4, v3

    if-lt v4, v5, :cond_1

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1401
    :cond_0
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v4, v3}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setService(Landroid/app/Service;Lorg/qtproject/qt/android/QtServiceDelegate;)V
    .locals 1

    .line 557
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_service:Landroid/app/Service;

    .line 559
    sput-object p1, Lorg/qtproject/qt/android/QtNative;->m_serviceDelegate:Lorg/qtproject/qt/android/QtServiceDelegate;

    .line 560
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native setSurface(ILjava/lang/Object;II)V
.end method

.method private static setSurfaceGeometry(IIIII)V
    .locals 7

    .line 1279
    new-instance v6, Lorg/qtproject/qt/android/QtNative$26;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtNative$26;-><init>(IIIII)V

    invoke-static {v6}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setSystemUiVisibility(I)V
    .locals 1

    .line 950
    new-instance v0, Lorg/qtproject/qt/android/QtNative$14;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$14;-><init>(I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;Z)V
    .locals 1

    .line 616
    new-instance v0, Lorg/qtproject/qt/android/QtNative$5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$5;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showSoftwareKeyboard(IIIIII)V
    .locals 8

    .line 916
    new-instance v7, Lorg/qtproject/qt/android/QtNative$11;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtNative$11;-><init>(IIIIII)V

    invoke-static {v7}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static startApplication(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "-platform\tandroid"

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 631
    sget-object v3, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "\t"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 634
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 635
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance v4, Lorg/qtproject/qt/android/QtNative$6;

    invoke-direct {v4, v1, p0}, Lorg/qtproject/qt/android/QtNative$6;-><init>([ZLjava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 648
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    new-instance p1, Lorg/qtproject/qt/android/QtNative$7;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtNative$7;-><init>()V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtThread;->post(Ljava/lang/Runnable;)V

    .line 654
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->waitForServiceSetup()V

    .line 655
    sput-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_started:Z

    .line 656
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    aget-boolean p0, v1, v2

    return p0

    :catchall_0
    move-exception p0

    .line 656
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static native startQtAndroidPlugin(Ljava/lang/String;)Z
.end method

.method public static native startQtApplication()V
.end method

.method public static native tabletEvent(IIJIIIFFF)V
.end method

.method public static native terminateQt()V
.end method

.method public static native touchAdd(IIIZIIFFFF)V
.end method

.method public static native touchBegin(I)V
.end method

.method public static native touchCancel(I)V
.end method

.method public static native touchEnd(II)V
.end method

.method public static native updateApplicationState(I)V
.end method

.method private static updateHandles(IIIIIIIIZ)V
    .locals 11

    .line 901
    new-instance v10, Lorg/qtproject/qt/android/QtNative$10;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtNative$10;-><init>(IIIIIIIIZ)V

    invoke-static {v10}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updatePrimaryClip(Landroid/content/ClipData;)V
    .locals 4

    .line 1091
    :try_start_0
    sget-boolean v0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z

    if-eqz v0, :cond_1

    .line 1092
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 1093
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 1094
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    goto :goto_0

    .line 1096
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1098
    :goto_0
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1

    .line 1100
    :cond_1
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p0, 0x1

    .line 1101
    sput-boolean p0, Lorg/qtproject/qt/android/QtNative;->m_usePrimaryClip:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Qt JAVA"

    const-string v1, "Failed to set clipboard data"

    .line 1104
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static updateSelection(IIII)V
    .locals 1

    .line 877
    new-instance v0, Lorg/qtproject/qt/android/QtNative$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtNative$9;-><init>(IIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native updateWindow()V
.end method

.method public static native waitForServiceSetup()V
.end method
