.class public Lorg/qtproject/qt/android/QtActivityDelegate;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"


# static fields
.field private static final APPLICATION_PARAMETERS_KEY:Ljava/lang/String; = "application.parameters"

.field public static final ApplicationActive:I = 0x4

.field public static final ApplicationHidden:I = 0x1

.field public static final ApplicationInactive:I = 0x2

.field public static final ApplicationSuspended:I = 0x0

.field private static final BUNDLED_LIBRARIES_KEY:Ljava/lang/String; = "bundled.libraries"

.field private static final CursorHandleNotShown:I = 0x0

.field private static final CursorHandleShowEdit:I = 0x100

.field private static final CursorHandleShowNormal:I = 0x1

.field private static final CursorHandleShowSelection:I = 0x2

.field private static final ENVIRONMENT_VARIABLES_KEY:Ljava/lang/String; = "environment.variables"

.field private static final EXTRACT_STYLE_KEY:Ljava/lang/String; = "extract.android.style"

.field private static final EXTRACT_STYLE_MINIMAL_KEY:Ljava/lang/String; = "extract.android.style.option"

.field private static final MAIN_LIBRARY_KEY:Ljava/lang/String; = "main.library"

.field private static final NATIVE_LIBRARIES_KEY:Ljava/lang/String; = "native.libraries"

.field private static final STATIC_INIT_CLASSES_KEY:Ljava/lang/String; = "static.init.classes"

.field public static final SYSTEM_UI_VISIBILITY_FULLSCREEN:I = 0x1

.field public static final SYSTEM_UI_VISIBILITY_NORMAL:I = 0x0

.field public static final SYSTEM_UI_VISIBILITY_TRANSLUCENT:I = 0x2

.field private static m_applicationParameters:Ljava/lang/String;


# instance fields
.field private final EnterKeyDefault:I

.field private final EnterKeyDone:I

.field private final EnterKeyGo:I

.field private final EnterKeyNext:I

.field private final EnterKeyPrevious:I

.field private final EnterKeyReturn:I

.field private final EnterKeySearch:I

.field private final EnterKeySend:I

.field private final ImhDate:I

.field private final ImhDialableCharactersOnly:I

.field private final ImhDigitsOnly:I

.field private final ImhEmailCharactersOnly:I

.field private final ImhFormattedNumbersOnly:I

.field private final ImhHiddenText:I

.field private final ImhLatinOnly:I

.field private final ImhLowercaseOnly:I

.field private final ImhMultiLine:I

.field private final ImhNoAutoUppercase:I

.field private final ImhNoPredictiveText:I

.field private final ImhPreferLatin:I

.field private final ImhPreferLowercase:I

.field private final ImhPreferNumbers:I

.field private final ImhPreferUppercase:I

.field private final ImhSensitiveData:I

.field private final ImhTime:I

.field private final ImhUppercaseOnly:I

.field private final ImhUrlCharactersOnly:I

.field private m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

.field private m_activity:Landroid/app/Activity;

.field public m_backKeyPressedSent:Z

.field private m_contextMenuVisible:Z

.field private m_currentRotation:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_dummyView:Landroid/view/View;

.field private m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

.field private m_editText:Lorg/qtproject/qt/android/QtEditText;

.field private m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_isPluginRunning:Z

.field private m_keyboardIsVisible:Z

.field private m_landscapeKeyboardHeight:I

.field private m_lastChar:I

.field private m_layout:Lorg/qtproject/qt/android/QtLayout;

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_mainLib:Ljava/lang/String;

.field private m_metaState:J

.field private m_nativeOrientation:I

.field private m_nativeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_optionsMenuIsVisible:Z

.field private m_portraitKeyboardHeight:I

.field private m_probeKeyboardHeightDelay:I

.field private m_quitApp:Z

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_showHideTimeStamp:J

.field private m_softInputMode:I

.field private m_splashScreen:Landroid/widget/ImageView;

.field private m_splashScreenSticky:Z

.field private m_started:Z

.field private m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

.field private m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

.field private m_super_onActivityResult:Ljava/lang/reflect/Method;

.field private m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

.field private m_super_onKeyDown:Ljava/lang/reflect/Method;

.field private m_super_onKeyUp:Ljava/lang/reflect/Method;

.field private m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

.field private m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

.field private m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

.field private m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

.field private m_surfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtSurface;",
            ">;"
        }
    .end annotation
.end field

.field private m_systemUiVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 106
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 107
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 108
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 109
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 110
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 111
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 112
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 113
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    .line 114
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    .line 115
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    .line 132
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    const/4 v1, 0x0

    .line 133
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 137
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    .line 138
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    .line 139
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    .line 140
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    .line 141
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 142
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 143
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 144
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 145
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 146
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 147
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    .line 148
    iput-boolean v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    .line 149
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 150
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 151
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 153
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    .line 154
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    const/16 v3, 0x32

    .line 155
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    .line 160
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    .line 162
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    .line 218
    iput v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhHiddenText:I

    const/4 v0, 0x2

    .line 219
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhSensitiveData:I

    const/4 v3, 0x4

    .line 220
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhNoAutoUppercase:I

    const/16 v4, 0x8

    .line 221
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferNumbers:I

    const/16 v4, 0x10

    .line 222
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferUppercase:I

    const/16 v4, 0x20

    .line 223
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferLowercase:I

    const/16 v4, 0x40

    .line 224
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhNoPredictiveText:I

    const/16 v4, 0x80

    .line 226
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDate:I

    const/16 v4, 0x100

    .line 227
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhTime:I

    const/16 v4, 0x200

    .line 229
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhPreferLatin:I

    const/16 v4, 0x400

    .line 231
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhMultiLine:I

    const/high16 v4, 0x10000

    .line 233
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDigitsOnly:I

    const/high16 v4, 0x20000

    .line 234
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhFormattedNumbersOnly:I

    const/high16 v4, 0x40000

    .line 235
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhUppercaseOnly:I

    const/high16 v4, 0x80000

    .line 236
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhLowercaseOnly:I

    const/high16 v4, 0x100000

    .line 237
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhDialableCharactersOnly:I

    const/high16 v4, 0x200000

    .line 238
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhEmailCharactersOnly:I

    const/high16 v4, 0x400000

    .line 239
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhUrlCharactersOnly:I

    const/high16 v4, 0x800000

    .line 240
    iput v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->ImhLatinOnly:I

    .line 243
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyDefault:I

    .line 244
    iput v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyReturn:I

    .line 245
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyDone:I

    const/4 v0, 0x3

    .line 246
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyGo:I

    .line 247
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeySend:I

    const/4 v0, 0x5

    .line 248
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeySearch:I

    const/4 v0, 0x6

    .line 249
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyNext:I

    const/4 v0, 0x7

    .line 250
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->EnterKeyPrevious:I

    .line 1133
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1163
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtEditText;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    return p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/qtproject/qt/android/QtActivityDelegate;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/qtproject/qt/android/QtActivityDelegate;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    return p1
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    return p0
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/QtActivityDelegate;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lorg/qtproject/qt/android/QtActivityDelegate;)Landroid/app/Activity;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    return p0
.end method

.method static synthetic access$502(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    return p1
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    return p0
.end method

.method static synthetic access$602(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    return p1
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    return p0
.end method

.method static synthetic access$728(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 1

    .line 103
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    mul-int/2addr v0, p1

    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_probeKeyboardHeightDelay:I

    return v0
.end method

.method static synthetic access$800(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtLayout;
    .locals 0

    .line 103
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    return-object p0
.end method

.method static synthetic access$900(Lorg/qtproject/qt/android/QtActivityDelegate;)I
    .locals 0

    .line 103
    iget p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    return p0
.end method

.method static synthetic access$902(Lorg/qtproject/qt/android/QtActivityDelegate;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    return p1
.end method

.method private setActionBarVisibility(Z)V
    .locals 1

    .line 1225
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1230
    :cond_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 1228
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :goto_1
    return-void
.end method


# virtual methods
.method public bringChildToBack(I)V
    .locals 2

    .line 1348
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1350
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    return-void

    .line 1354
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1356
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result v0

    .line 1357
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, p1, v0}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public bringChildToFront(I)V
    .locals 2

    .line 1333
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1335
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 1337
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v0, p1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 1341
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1343
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtLayout;->moveChild(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public closeContextMenu()V
    .locals 1

    .line 1220
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public createSurface(IZIIIII)V
    .locals 4

    .line 1255
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1256
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1257
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1258
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1259
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1261
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1269
    :cond_1
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1270
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 1272
    :cond_2
    new-instance v0, Lorg/qtproject/qt/android/QtSurface;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2, p7}, Lorg/qtproject/qt/android/QtSurface;-><init>(Landroid/content/Context;IZI)V

    if-ltz p5, :cond_4

    if-gez p6, :cond_3

    goto :goto_1

    .line 1277
    :cond_3
    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {p2, p5, p6, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p2}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1274
    :cond_4
    :goto_1
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    :goto_2
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getSurfaceCount()I

    move-result p2

    .line 1283
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p3, v0, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;I)V

    .line 1285
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    if-nez p1, :cond_5

    .line 1287
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    :cond_5
    return-void
.end method

.method public destroySurface(I)V
    .locals 2

    .line 1306
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Qt JAVA"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 1319
    :cond_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1320
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    goto :goto_1

    .line 1322
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1363
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1367
    :try_start_0
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1369
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1113
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1116
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1117
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtNative;->keyDown(IIIZ)V

    .line 1119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtNative;->keyUp(IIIZ)V

    .line 1122
    :cond_2
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1126
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method getAppIconSize(Landroid/app/Activity;)I
    .locals 3

    .line 487
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x200

    const/16 v2, 0x24

    if-lt v0, v2, :cond_0

    if-le v0, v1, :cond_2

    .line 489
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 490
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 491
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x3

    if-ge p1, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getSelectHandleWidth()I
    .locals 2

    .line 519
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSurfaceCount()I
    .locals 1

    .line 1328
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hideSoftwareKeyboard()V
    .locals 5

    .line 466
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lorg/qtproject/qt/android/QtActivityDelegate$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lorg/qtproject/qt/android/QtActivityDelegate$3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    return-void
.end method

.method public hideSplashScreen()V
    .locals 1

    const/4 v0, 0x0

    .line 884
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    return-void
.end method

.method public hideSplashScreen(I)V
    .locals 3

    .line 889
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz p1, :cond_1

    .line 893
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 894
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    return-void

    .line 898
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 899
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v1, p1

    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 902
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$7;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$7;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 913
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public initializeAccessibility()V
    .locals 3

    .line 951
    new-instance v0, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-direct {v0, v1, v2, p0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    return-void
.end method

.method public insertNativeView(ILandroid/view/View;IIII)V
    .locals 3

    .line 1234
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1236
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 1239
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-ltz p5, :cond_3

    if-gez p6, :cond_2

    goto :goto_0

    .line 1246
    :cond_2
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p5, p6, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1243
    :cond_3
    :goto_0
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 1250
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p3, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;)V

    .line 1251
    iget-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isKeyboardVisible()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    return v0
.end method

.method public loadApplication(Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/os/Bundle;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "native.libraries"

    .line 600
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    const-string v5, "bundled.libraries"

    .line 601
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v6, "environment.variables"

    .line 602
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v7, p1

    .line 606
    iput-object v7, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 607
    invoke-direct {v1, v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 608
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    .line 609
    invoke-static/range {p2 .. p2}, Lorg/qtproject/qt/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "static.init.classes"

    .line 610
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    .line 611
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    array-length v11, v8

    move v12, v4

    :goto_0
    if-ge v12, v11, :cond_2

    aget-object v0, v8, v12

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v13, p2

    goto :goto_2

    :cond_1
    move-object/from16 v13, p2

    .line 616
    :try_start_0
    invoke-virtual {v13, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 617
    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v10, "setActivity"

    new-array v4, v9, [Ljava/lang/Class;

    .line 619
    const-class v18, Landroid/app/Activity;

    const/16 v17, 0x0

    aput-object v18, v4, v17

    const-class v18, Ljava/lang/Object;

    const/16 v16, 0x1

    aput-object v18, v4, v16

    invoke-virtual {v14, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v10, v9, [Ljava/lang/Object;

    .line 620
    iget-object v9, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/16 v17, 0x0

    aput-object v9, v10, v17

    aput-object v1, v10, v16

    invoke-virtual {v4, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "Qt JAVA"

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement setActivity method"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    const-string v0, "setContext"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/Class;

    .line 627
    const-class v10, Landroid/content/Context;

    const/16 v17, 0x0

    aput-object v10, v9, v17

    invoke-virtual {v14, v0, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Object;

    .line 628
    iget-object v4, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    aput-object v4, v9, v17

    invoke-virtual {v0, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 630
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x2

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->loadQtLibraries(Ljava/util/ArrayList;)V

    .line 638
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 639
    iget-object v3, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtNativeLibrariesDir;->nativeLibrariesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadBundledLibraries(Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v4, "main.library"

    .line 641
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 643
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 644
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    .line 645
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    const-string v0, "extract.android.style"

    .line 648
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 649
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v4, Lorg/qtproject/qt/android/ExtractStyle;

    iget-object v5, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v8, "extract.android.style.option"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 651
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-direct {v4, v5, v0, v8}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 655
    :cond_5
    :try_start_5
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_dispatchKeyEvent"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchKeyEvent:Ljava/lang/reflect/Method;

    .line 656
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onRestoreInstanceState"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    .line 657
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onRetainNonConfigurationInstance"

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    .line 658
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onSaveInstanceState"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    .line 659
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onKeyDown"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const-class v5, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyDown:Ljava/lang/reflect/Method;

    .line 660
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onKeyUp"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const-class v5, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onKeyUp:Ljava/lang/reflect/Method;

    .line 661
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onConfigurationChanged"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Landroid/content/res/Configuration;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    .line 662
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onActivityResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const-class v8, Landroid/content/Intent;

    const/4 v9, 0x2

    aput-object v8, v5, v9

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    .line 663
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_onWindowFocusChanged"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    .line 664
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "super_dispatchGenericMotionEvent"

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/view/MotionEvent;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_dispatchGenericMotionEvent:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 670
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariables(Ljava/lang/String;)V

    const-string v0, "QT_ANDROID_FONTS_MONOSPACE"

    const-string v4, "Droid Sans Mono;Droid Sans;Droid Sans Fallback"

    .line 671
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QT_ANDROID_FONTS_SERIF"

    const-string v4, "Droid Serif"

    .line 673
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "HOME"

    invoke-static {v4, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TMPDIR"

    invoke-static {v4, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QT_ANDROID_FONTS"

    const-string v4, "Roboto;Droid Sans;Droid Sans Fallback"

    .line 676
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->getAppIconSize(Landroid/app/Activity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "QT_ANDROID_APP_ICON_SIZE"

    .line 678
    invoke-static {v4, v0}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application.parameters"

    .line 681
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 682
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string v0, ""

    .line 684
    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    .line 687
    :goto_4
    :try_start_6
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 692
    :goto_5
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$4;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate$4;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    .line 726
    :try_start_7
    iget-object v2, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v4, "display"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    .line 727
    invoke-virtual {v2, v0, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 732
    :goto_6
    iget-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/qtproject/qt/android/QtNative;->loadMainLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_mainLib:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v4, v5

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    return v4

    :catch_5
    move-exception v0

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return v2

    :cond_8
    :goto_8
    move v2, v4

    return v2
.end method

.method public notifyAccessibilityLocationChange()V
    .locals 1

    .line 918
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    return-void

    .line 920
    :cond_0
    invoke-virtual {v0}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyLocationChange()V

    return-void
.end method

.method public notifyObjectFocus(I)V
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    return-void

    .line 934
    :cond_0
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectFocus(I)V

    return-void
.end method

.method public notifyObjectHide(II)V
    .locals 1

    .line 925
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    return-void

    .line 927
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyObjectHide(II)V

    return-void
.end method

.method public notifyQtAndroidPluginRunning(Z)V
    .locals 0

    .line 946
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;

    if-nez v0, :cond_0

    return-void

    .line 941
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/accessibility/QtAccessibilityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1006
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onActivityResult:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    :goto_0
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 967
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onConfigurationChanged:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 969
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1189
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onContextItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1183
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    .line 1184
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "android.app.splash_screen_sticky"

    const/4 v1, 0x1

    .line 790
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    if-nez p1, :cond_0

    .line 793
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$5;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$5;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 806
    :goto_0
    new-instance v2, Lorg/qtproject/qt/android/QtLayout;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 808
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 811
    :try_start_0
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.app.splash_screen_drawable_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v3, :cond_1

    const-string v7, "landscape"

    goto :goto_1

    :cond_1
    const-string v7, "portrait"

    .line 814
    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 815
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v6, "android.app.splash_screen_drawable"

    .line 818
    :cond_2
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 819
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 820
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 821
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 822
    iget-object v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 823
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 824
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 831
    :cond_4
    :goto_3
    new-instance v0, Lorg/qtproject/qt/android/QtEditText;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v5, p0}, Lorg/qtproject/qt/android/QtEditText;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 832
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    .line 834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    .line 835
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 836
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v1

    :goto_5
    if-ne p1, v3, :cond_7

    move v2, v1

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v4, :cond_9

    :cond_8
    if-nez v2, :cond_a

    if-eqz v4, :cond_a

    .line 844
    :cond_9
    iput v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    goto :goto_6

    .line 846
    :cond_a
    iput v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    .line 848
    :goto_6
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/QtLayout;->setNativeOrientation(I)V

    .line 849
    iget p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeOrientation:I

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->handleOrientationChanged(II)V

    .line 850
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_currentRotation:I

    .line 852
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_b

    .line 853
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    goto :goto_7

    .line 854
    :cond_b
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 855
    :goto_7
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->handleRefreshRateChanged(F)V

    .line 857
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$6;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$6;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 879
    new-instance p1, Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-direct {p1, v0, v1}, Lorg/qtproject/qt/android/EditPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1168
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 1169
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    const/4 p1, 0x1

    .line 1170
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 1136
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePopupMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1175
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    .line 1176
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_contextMenuVisible:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 975
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    if-eqz v0, :cond_0

    .line 976
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    const/4 v0, 0x0

    .line 977
    invoke-static {v0, v0}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;Lorg/qtproject/qt/android/QtActivityDelegate;)V

    .line 978
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    const/4 v0, 0x0

    .line 979
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1056
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1059
    :cond_0
    iget-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v2, v3, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    .line 1060
    invoke-static {v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 1062
    iget-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v2, v3}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    const v2, 0x7fffffff

    and-int/2addr v2, v0

    .line 1066
    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    invoke-static {v3, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    const/16 v3, 0x18

    if-eq p1, v3, :cond_2

    const/16 v3, 0x19

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5b

    if-ne p1, v3, :cond_3

    :cond_2
    const-string v3, "QT_ANDROID_VOLUME_KEYS"

    .line 1073
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 1077
    :cond_3
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_lastChar:I

    const/4 v0, 0x4

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4

    .line 1079
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_4

    return v3

    .line 1083
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_5

    move v1, v3

    :cond_5
    invoke-static {p1, v2, v0, v1}, Lorg/qtproject/qt/android/QtNative;->keyDown(IIIZ)V

    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1090
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_isPluginRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_2

    :cond_1
    const-string v0, "QT_ANDROID_VOLUME_KEYS"

    .line 1096
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    .line 1100
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_3

    .line 1101
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSoftwareKeyboard()V

    .line 1102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setKeyboardVisibility(ZJ)Z

    return v2

    .line 1106
    :cond_3
    iget-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    invoke-static {v3, v4, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_metaState:J

    .line 1107
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p1, v0, v3, v1}, Lorg/qtproject/qt/android/QtNative;->keyUp(IIIZ)V

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1000
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    .line 1154
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1155
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 986
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1141
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_optionsMenuIsVisible:Z

    .line 1142
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1376
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->sendRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1045
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRestoreInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "Started"

    .line 1049
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x4

    .line 991
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 992
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    if-eqz v0, :cond_0

    .line 993
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateWindow()V

    .line 994
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 1023
    :try_start_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onRetainNonConfigurationInstance:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1025
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1027
    :goto_0
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_quitApp:Z

    const/4 v0, 0x1

    .line 1028
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1033
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onSaveInstanceState:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1035
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1037
    :goto_0
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    const-string v1, "SystemUiVisibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1038
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_started:Z

    const-string v1, "Started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 1017
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 784
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQt()V

    .line 785
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->exit()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 956
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_super_onWindowFocusChanged:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 958
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    .line 961
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    :cond_0
    return-void
.end method

.method public openContextMenu(IIII)V
    .locals 8

    .line 1195
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    new-instance v7, Lorg/qtproject/qt/android/QtActivityDelegate$8;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$8;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v7, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetOptionsMenu()V
    .locals 1

    .line 1160
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public resetSoftwareKeyboard()V
    .locals 4

    .line 277
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setKeyboardVisibility(ZJ)Z
    .locals 2

    .line 261
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 263
    :cond_0
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_showHideTimeStamp:J

    .line 265
    iget-boolean p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    if-ne p2, p1, :cond_1

    return v1

    .line 267
    :cond_1
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_keyboardIsVisible:Z

    .line 268
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->keyboardVisibilityUpdated(Z)V

    if-nez p1, :cond_2

    .line 271
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->updateFullScreen()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setSurfaceGeometry(IIIII)V
    .locals 2

    .line 1291
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtSurface;

    .line 1293
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p4, p5, p2, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1294
    :cond_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1296
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p4, p5, p2, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    .line 1298
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Surface "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Qt JAVA"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 4

    .line 167
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    .line 170
    :cond_0
    iput p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    const/16 v0, 0x800

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0xc000800

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 194
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 181
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/16 v2, 0x1706

    goto :goto_0

    .line 175
    :cond_3
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 176
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 199
    :goto_0
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 201
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    return-void
.end method

.method public showSoftwareKeyboard(IIIIII)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 290
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 299
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-ge v1, v2, :cond_2

    .line 300
    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_portraitKeyboardHeight:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x5

    goto :goto_0

    .line 302
    :cond_2
    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_landscapeKeyboardHeight:I

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v4

    move v1, v0

    .line 304
    :goto_0
    iget v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    const/16 v2, 0x11

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 306
    iget v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_softInputMode:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_4

    move v0, v11

    goto :goto_1

    :cond_4
    move v0, v10

    :goto_1
    if-eqz v0, :cond_7

    return-void

    :cond_5
    if-le v5, v1, :cond_6

    .line 311
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    .line 313
    :cond_6
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_7
    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x4

    if-eq v7, v11, :cond_c

    if-eq v7, v4, :cond_b

    if-eq v7, v14, :cond_a

    if-eq v7, v3, :cond_9

    if-eq v7, v13, :cond_d

    if-eq v7, v1, :cond_8

    move v3, v13

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_3

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v14

    goto :goto_3

    :cond_b
    move v3, v12

    goto :goto_3

    :cond_c
    move v3, v0

    :cond_d
    :goto_3
    const v1, 0x30008

    and-int/2addr v1, v6

    const/high16 v15, 0x20000

    if-eqz v1, :cond_f

    and-int v1, v6, v15

    if-eqz v1, :cond_e

    const/16 v1, 0x3002

    move v4, v1

    goto :goto_4

    :cond_e
    move v4, v12

    :goto_4
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_10

    or-int/lit8 v4, v4, 0x10

    goto :goto_5

    :cond_f
    const/high16 v1, 0x100000

    and-int/2addr v1, v6

    if-eqz v1, :cond_11

    :cond_10
    :goto_5
    move v1, v10

    goto/16 :goto_c

    :cond_11
    and-int/lit16 v1, v6, 0x180

    if-eqz v1, :cond_14

    const/16 v2, 0x180

    if-eq v1, v2, :cond_13

    and-int/lit16 v1, v6, 0x80

    if-eqz v1, :cond_12

    const/16 v4, 0x14

    goto :goto_5

    :cond_12
    const/16 v4, 0x24

    goto :goto_5

    :cond_13
    move v1, v10

    move v4, v14

    goto/16 :goto_c

    :cond_14
    and-int/lit8 v1, v6, 0x1

    if-eqz v1, :cond_16

    const/16 v2, 0x81

    :cond_15
    :goto_6
    move v12, v3

    goto :goto_8

    :cond_16
    and-int/lit8 v1, v6, 0x2

    if-nez v1, :cond_1a

    and-int/lit8 v1, v6, 0x40

    if-eqz v1, :cond_17

    const-string v1, "QT_ANDROID_ENABLE_WORKAROUND_TO_DISABLE_PREDICTIVE_TEXT"

    .line 367
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_7

    :cond_17
    const/high16 v1, 0x400000

    and-int/2addr v1, v6

    if-eqz v1, :cond_18

    if-nez v7, :cond_15

    goto :goto_8

    :cond_18
    const/high16 v1, 0x200000

    and-int/2addr v1, v6

    move v12, v3

    if-eqz v1, :cond_19

    move v2, v9

    goto :goto_8

    :cond_19
    move v2, v11

    goto :goto_8

    :cond_1a
    :goto_7
    const/16 v2, 0x91

    goto :goto_6

    :goto_8
    and-int/lit16 v1, v6, 0x400

    if-eqz v1, :cond_1b

    or-int/2addr v2, v15

    goto :goto_9

    :cond_1b
    move v13, v12

    :goto_9
    and-int/lit8 v1, v6, 0x43

    const/high16 v3, 0x80000

    if-eqz v1, :cond_1c

    or-int v1, v2, v3

    move v4, v1

    goto :goto_a

    :cond_1c
    move v4, v2

    :goto_a
    const/high16 v1, 0x40000

    and-int/2addr v1, v6

    if-eqz v1, :cond_1d

    or-int/lit16 v4, v4, 0x1000

    const/16 v1, 0x1000

    goto :goto_b

    :cond_1d
    and-int v1, v6, v3

    if-nez v1, :cond_1e

    and-int/lit8 v1, v6, 0x4

    if-nez v1, :cond_1e

    or-int/lit16 v4, v4, 0x4000

    const/16 v1, 0x4000

    goto :goto_b

    :cond_1e
    move v1, v10

    :goto_b
    move v3, v13

    :goto_c
    if-nez v7, :cond_1f

    and-int/lit16 v2, v6, 0x400

    if-eqz v2, :cond_1f

    goto :goto_d

    :cond_1f
    move v0, v3

    .line 398
    :goto_d
    iget-object v2, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v2, v1}, Lorg/qtproject/qt/android/QtEditText;->setInitialCapsMode(I)V

    .line 399
    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtEditText;->setImeOptions(I)V

    .line 400
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/QtEditText;->setInputType(I)V

    .line 402
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    iget-object v1, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v9, p3

    invoke-direct {v2, v9, v5, v3, v4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2, v10}, Lorg/qtproject/qt/android/QtLayout;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 403
    iget-object v0, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->requestFocus()Z

    .line 404
    iget-object v10, v8, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v11, Lorg/qtproject/qt/android/QtActivityDelegate$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtActivityDelegate$2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIIII)V

    const-wide/16 v0, 0xf

    invoke-virtual {v10, v11, v0, v1}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startApplication()Z
    .locals 7

    const-string v0, "extraappparams"

    const-string v1, "extraenvvars"

    const/4 v2, 0x0

    .line 741
    :try_start_0
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 744
    :try_start_1
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v5, :cond_2

    .line 748
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v6, "UTF-8"

    if-eqz v5, :cond_1

    .line 750
    :try_start_2
    new-instance v5, Ljava/lang/String;

    .line 751
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 750
    invoke-static {v5}, Lorg/qtproject/qt/android/QtNative;->setEnvironmentVariables(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 754
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v1, :cond_3

    .line 760
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_applicationParameters:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 762
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 746
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :try_start_6
    const-string v0, "Qt JAVA"

    const-string v1, "Not in debug mode! It is not allowed to use extra arguments in non-debug mode."

    .line 766
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_surfaces:Ljava/util/HashMap;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    return v4

    :catch_3
    move-exception v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public updateFullScreen()V
    .locals 2

    .line 206
    iget v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_systemUiVisibility:I

    .line 208
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateHandles(IIIIIIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    and-int/lit16 v4, v1, 0xff

    const/4 v10, 0x0

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto/16 :goto_2

    .line 565
    :cond_0
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_3

    .line 566
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v7, 0x2

    const v12, 0x10102c5

    const v13, 0x10102c6

    if-nez p9, :cond_1

    move v8, v12

    goto :goto_0

    :cond_1
    move v8, v13

    :goto_0
    move-object v4, v11

    move/from16 v9, p9

    .line 568
    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 570
    new-instance v11, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v5, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v6, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v7, 0x3

    if-nez p9, :cond_2

    move v8, v13

    goto :goto_1

    :cond_2
    move v8, v12

    :goto_1
    move-object v4, v11

    move/from16 v9, p9

    .line 572
    invoke-direct/range {v4 .. v9}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v11, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 575
    :cond_3
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 576
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual {v2, v3, v4}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 577
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_4

    .line 578
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 579
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    :cond_4
    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    .line 551
    :cond_5
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v4, :cond_6

    .line 552
    new-instance v4, Lorg/qtproject/qt/android/CursorHandle;

    iget-object v12, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v13, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    const/4 v14, 0x1

    const v15, 0x10102c7

    const/16 v16, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 555
    :cond_6
    iget-object v4, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v4, v2, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 556
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_a

    .line 557
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 558
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 559
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 560
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    goto :goto_2

    .line 536
    :cond_7
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_8

    .line 537
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 538
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 540
    :cond_8
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v2, :cond_9

    .line 541
    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 542
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 543
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 544
    iput-object v10, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 546
    :cond_9
    iget-object v2, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v2, :cond_a

    .line 547
    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    .line 585
    :cond_a
    :goto_2
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->hasClipboardText()Z

    move-result v2

    if-nez v2, :cond_b

    and-int/lit8 v2, p4, -0x5

    move v6, v2

    goto :goto_3

    :cond_b
    move/from16 v6, p4

    :goto_3
    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    if-eqz v6, :cond_c

    .line 589
    iget-object v3, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    iget-object v7, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v8, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    iget-object v9, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(IIILorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;Lorg/qtproject/qt/android/CursorHandle;)V

    goto :goto_4

    .line 592
    :cond_c
    iget-object v1, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    if-eqz v1, :cond_d

    .line 593
    invoke-virtual {v1}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    :cond_d
    :goto_4
    return-void
.end method

.method public updateSelection(IIII)V
    .locals 6

    .line 504
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method
