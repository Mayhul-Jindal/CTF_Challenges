.class public Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;,
        Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$HoverEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "$VirtualChild"

.field public static final INVALID_ID:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "Qt A11Y"


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field private m_focusedVirtualViewId:I

.field private final m_globalOffset:[I

.field private m_hoveredVirtualViewId:I

.field private m_layout:Landroid/view/ViewGroup;

.field private m_manager:Landroid/view/accessibility/AccessibilityManager;

.field private m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private m_oldOffsetX:I

.field private m_oldOffsetY:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    const/16 v1, 0x14d

    .line 84
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 86
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 91
    iput-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v1, 0x0

    .line 92
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 93
    iput v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 432
    new-instance v1, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 106
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_activity:Landroid/app/Activity;

    .line 107
    iput-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Landroid/view/ViewGroup;

    .line 108
    iput-object p3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const-string p2, "accessibility"

    .line 110
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    .line 112
    new-instance p1, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;

    invoke-direct {p1, p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$1;)V

    .line 113
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Qt A11y"

    const-string p3, "Could not register a11y state change listener"

    .line 114
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 116
    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate$AccessibilityManagerListener;->onAccessibilityStateChanged(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$202(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/app/Activity;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtActivityDelegate;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_activityDelegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/ViewGroup;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_layout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$902(Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;I)I
    .locals 0

    .line 64
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p1
.end method

.method private dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->hitTest(FF)I

    move-result v0

    const/16 v1, 0x14d

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 189
    :cond_2
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private dumpNodes(I)V
    .locals 5

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A11Y hierarchy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qt A11Y"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    desc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " NODE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 321
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has child: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->dumpNodes(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .line 301
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$VirtualChild"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Qt A11Y"

    const-string v1, "AccessibilityEvent with empty description"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 331
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 336
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 338
    aget v2, v2, v5

    .line 341
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 342
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 343
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 345
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 346
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 347
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 348
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 351
    iget-object v5, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 352
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 353
    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 356
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 357
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 363
    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v1

    .line 364
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 365
    iget-object v5, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    aget v6, v1, v3

    invoke-virtual {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    if-eq v1, v2, :cond_3

    .line 371
    :cond_2
    iput v4, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 372
    iput v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 373
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    const/16 v2, 0x14d

    if-eq v1, v2, :cond_3

    .line 374
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    const/16 v3, 0x80

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 377
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    iget v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    const/16 v3, 0x40

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_3
    return-object v0
.end method

.method private getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 388
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$VirtualChild"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {p1, v0}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->populateNode(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 397
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 399
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityNodeInfo with empty contentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qt A11Y"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->parentId(I)I

    move-result v1

    .line 403
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 405
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    .line 407
    aget v3, v3, v6

    .line 408
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 409
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 412
    invoke-static {v1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 413
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 414
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 417
    iget v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v1, p1, :cond_2

    .line 418
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 425
    :goto_0
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object p1

    .line 426
    :goto_1
    array-length v1, p1

    if-ge v4, v1, :cond_3

    .line 427
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    aget v2, p1, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private setHoveredVirtualViewId(I)V
    .locals 2

    .line 289
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 294
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    const/16 v1, 0x80

    .line 295
    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    const/16 p1, 0x100

    .line 296
    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 167
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1
.end method

.method public invalidateVirtualViewId(I)V
    .locals 1

    const/16 v0, 0x14d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x800

    .line 284
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_0
    return-void
.end method

.method public notifyLocationChange()V
    .locals 1

    .line 198
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 224
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 207
    iget v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    const/16 v0, 0x14d

    .line 208
    iput v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 209
    iget-object v0, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 210
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    .line 215
    :cond_0
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 5

    const-string v0, "Qt A11Y"

    const/16 v1, 0x14d

    if-eq p1, v1, :cond_4

    .line 232
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 237
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    const-string p1, "Could not announce value because ViewGroup was null."

    .line 239
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v2, 0x4000

    .line 244
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    const/4 v3, 0x1

    .line 246
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$VirtualChild"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No value to announce for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_2
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 259
    iget-object p1, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to send value change announcement for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, "notifyValueChanged() for invalid view"

    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected performActionForVirtualViewId(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 p3, 0x10

    if-eq p2, p3, :cond_2

    const/16 p3, 0x1000

    if-eq p2, p3, :cond_1

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 502
    :cond_0
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->scrollBackward(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 504
    invoke-virtual {p0, p1, p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_0

    .line 497
    :cond_1
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->scrollForward(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 499
    invoke-virtual {p0, p1, p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    goto :goto_0

    .line 492
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/accessibility/QtNativeAccessibility;->clickAction(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    .line 494
    invoke-virtual {p0, p1, p3}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_3
    :goto_0
    move p1, p2

    :goto_1
    return p1
.end method

.method public sendEventForVirtualViewId(II)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Qt A11Y"

    const/16 v2, 0x14d

    if-eq p1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    const-string p1, "Could not send AccessibilityEvent because group was null. This should really not happen."

    .line 272
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 277
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 278
    iget-object p2, p0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, p2, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "sendEventForVirtualViewId for invalid view"

    .line 266
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
